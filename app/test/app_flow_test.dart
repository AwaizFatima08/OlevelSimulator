import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:questionsimulator/app.dart';
import 'package:questionsimulator/data/repository.dart';
import 'package:questionsimulator/data/user_store.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Drives the real app over the bundled packs: home → subject → topic → filter → question sheet → save.
void main() {
  for (final (name, size, dpr) in [
    ('large phone', const Size(1080, 2340), 2.75),
    ('small phone', const Size(720, 1280), 2.0),
  ]) {
    testWidgets(
      'student can browse a topic, filter by year and save a question ($name)',
      (tester) async {
        SharedPreferences.setMockInitialValues({});
        final repo = ContentRepository(
          client: MockClient((_) async => http.Response('offline', 503)),
        );
        final store = UserStore();
        await tester.runAsync(() async {
          await repo.load();
          await store.load();
        });
        tester.view.physicalSize = size;
        tester.view.devicePixelRatio = dpr;
        addTearDown(tester.view.reset);

        await tester.pumpWidget(QuestionSimulatorApp(repo: repo, store: store));
        await tester.pumpAndSettle();
        expect(
          find.text('Past paper questions, sorted by topic and year'),
          findsOneWidget,
        );

        // Open IGCSE Physics.
        await tester.scrollUntilVisible(find.text('0625'), 300);
        await tester.tap(find.text('0625'));
        await tester.runAsync(() => repo.subject('0625'));
        await tester.pumpAndSettle();
        expect(find.text('IGCSE Physics'), findsOneWidget);

        // Open the first topic and check the year filter narrows the list.
        final firstTopic = (await tester.runAsync(
          () => repo.subject('0625'),
        ))!.topics.first;
        await tester.tap(find.text(firstTopic.name).first);
        await tester.pumpAndSettle();
        expect(find.text('By year'), findsOneWidget);
        expect(find.text('All years'), findsOneWidget);
        final year = firstTopic.questions.last.year;
        final chip = find.widgetWithText(ChoiceChip, '$year');
        await tester.ensureVisible(chip);
        await tester.pumpAndSettle();
        await tester.tap(chip);
        await tester.pumpAndSettle();
        expect(find.textContaining('$year '), findsWidgets);
        expect(
          find.textContaining('${firstTopic.questions.first.year} '),
          year == firstTopic.questions.first.year ? findsWidgets : findsNothing,
        );

        // Open a question, save it, and see it on the saved page.
        await tester.tap(find.textContaining('· Paper').first);
        await tester.pumpAndSettle();
        expect(find.text('Official past papers'), findsOneWidget);
        await tester.tap(find.text('Save'));
        await tester.pumpAndSettle();
        expect(find.text('Saved'), findsOneWidget);
        expect(store.savedKeys, hasLength(1));

        // Similar tab renders.
        Navigator.of(tester.element(find.text('Saved'))).pop();
        await tester.pumpAndSettle();
        await tester.tap(find.text('Similar'));
        await tester.pumpAndSettle();
        expect(find.textContaining('same subtopic'), findsOneWidget);
      },
    );
  }
}
