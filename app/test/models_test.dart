import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:questionsimulator/app.dart';
import 'package:questionsimulator/data/models.dart';
import 'package:questionsimulator/widgets/common.dart';

/// Reads the real bundled packs, so a broken pipeline build fails here before it reaches a phone.
Map<String, dynamic> _asset(String name) =>
    jsonDecode(File('assets/data/$name').readAsStringSync()) as Map<String, dynamic>;

void main() {
  final manifest = Manifest.fromJson(_asset('manifest.json'));

  test('manifest lists every pack and its levels', () {
    expect(manifest.version, matches(RegExp(r'^\d{4}-\d{2}$')));
    expect(manifest.levels.map((l) => l.id), containsAll(['o-level', 'igcse', 'a-level']));
    expect(manifest.packs, isNotEmpty);
    for (final p in manifest.packs) {
      expect(File('assets/data/${p.code}.json').existsSync(), isTrue, reason: p.code);
    }
  });

  test('every pack parses and its question references resolve', () {
    for (final p in manifest.packs) {
      final s = Subject.fromJson(_asset('${p.code}.json'));
      expect(s.code, p.code);
      expect(s.questionCount, p.questions, reason: p.code);
      for (final t in s.topics) {
        final ids = {for (final q in t.questions) q.id};
        for (final st in t.subtopics) {
          expect(ids, containsAll(st.questionIds), reason: '${p.code} ${t.name} / ${st.name}');
        }
      }
    }
  });

  test('questions sort newest session first, then paper order', () {
    Question q(String session, String paper, String number) => Question(
        id: '$session$paper$number', session: session, paper: paper, variant: '2', number: number,
        parts: const [], marks: 1, subtopics: const []);
    final list = [q('2024-MJ', '4', '1'), q('2024-ON', '2', '3'), q('2025-MJ', '4', '2'), q('2024-ON', '2', '1')]
      ..sort((a, b) => a.compareTo(b));
    expect(list.map((e) => e.id), ['2025-MJ42', '2024-ON21', '2024-ON23', '2024-MJ41']);
  });

  test('labels read like the website', () {
    const q = Question(
        id: 'x', session: '2024-ON', paper: '4', variant: '2', number: '7', parts: ['a', 'b(ii)'], marks: 6,
        subtopics: ['Circuits']);
    expect(q.sessionLabel, '2024 Oct/Nov');
    expect(q.paperRef, 'Paper 42');
    expect(q.questionLabel, 'Q7 (a, b(ii))');
    expect(q.marksLabel, '6 marks');
  });

  test('banker and rare thresholds match the website', () {
    expect(frequencyOf(9, 9), Frequency.banker);
    expect(frequencyOf(8, 9), Frequency.banker);
    expect(frequencyOf(5, 9), Frequency.normal);
    expect(frequencyOf(2, 9), Frequency.rare);
  });

  test('newer release versions compare greater', () {
    Manifest m(String v) => Manifest(
        version: v, label: '', sessions: const [], site: '', levels: const [], packs: const [], comingSoon: const []);
    expect(m('2026-10').isOlderThan(m('2027-01')), isTrue);
    expect(m('2027-01').isOlderThan(m('2026-10')), isFalse);
    expect(m('2026-10').isOlderThan(m('2026-10')), isFalse);
  });

  test('app version matches pubspec', () {
    final pubspec = File('pubspec.yaml').readAsStringSync();
    expect(pubspec, contains('version: $appVersion+'));
  });

  test('a question split across topics is merged back into the whole question', () {
    var checked = 0;
    for (final p in manifest.packs) {
      final s = Subject.fromJson(_asset('${p.code}.json'));
      final slices = <String, List<Question>>{};
      for (final t in s.topics) {
        for (final q in t.questions) {
          slices.putIfAbsent(q.id, () => []).add(q);
        }
      }
      for (final e in slices.entries.where((e) => e.value.length > 1)) {
        final whole = s.findQuestion(e.key)!;
        final total = e.value.fold<double>(0, (a, q) => a + q.marks);
        expect(whole.marks, closeTo(total, 1e-9), reason: '${p.code} ${e.key}');
        expect(whole.parts.toSet(), {for (final q in e.value) ...q.parts}, reason: '${p.code} ${e.key}');
        checked++;
      }
    }
    expect(checked, greaterThan(100));
  });

  test('merged part labels sort in exam order, reading roman numerals', () {
    Question q(List<String> parts) => Question(
        id: 'x', session: '2024-ON', paper: '4', variant: '1', number: '3', parts: parts, marks: 1, subtopics: const []);
    final s = Subject(
      code: 'T', level: 'igcse', name: 'T', papers: const {}, officialUrl: '', webUrl: '', guideUrl: '',
      sessions: const ['2024-ON'],
      topics: [
        Topic(name: 'A', slug: 'a', share: 1, sessions: 1, subtopics: const [], questions: [q(['c', 'a(iv)'])]),
        Topic(name: 'B', slug: 'b', share: 1, sessions: 1, subtopics: const [], questions: [q(['a(iii)', 'a(i)', 'b(ii)'])]),
      ],
    );
    final whole = s.findQuestion('x')!;
    expect(whole.parts, ['a(i)', 'a(iii)', 'a(iv)', 'b(ii)', 'c']);
    expect(whole.marks, 2);
  });

  test('counts get thousands separators', () {
    expect(formatCount(7), '7');
    expect(formatCount(22383), '22,383');
    expect(formatCount(1000000), '1,000,000');
  });
}
