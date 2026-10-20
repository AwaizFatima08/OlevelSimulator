// Data models for the content packs built by pipeline/build_site.py (site/data/*.json).

class Level {
  const Level({required this.id, required this.name, required this.short});
  final String id;
  final String name;
  final String short;

  factory Level.fromJson(Map<String, dynamic> j) =>
      Level(id: j['id'] as String, name: j['name'] as String, short: j['short'] as String);
}

class PackInfo {
  const PackInfo({
    required this.code,
    required this.level,
    required this.name,
    required this.file,
    required this.bytes,
    required this.questions,
  });
  final String code;
  final String level;
  final String name;
  final String file;
  final int bytes;
  final int questions;

  factory PackInfo.fromJson(Map<String, dynamic> j) => PackInfo(
        code: j['code'] as String,
        level: j['level'] as String,
        name: j['name'] as String,
        file: j['file'] as String,
        bytes: (j['bytes'] as num).toInt(),
        questions: (j['questions'] as num).toInt(),
      );
}

class ComingSoon {
  const ComingSoon({required this.code, required this.level, required this.name});
  final String code;
  final String level;
  final String name;

  factory ComingSoon.fromJson(Map<String, dynamic> j) =>
      ComingSoon(code: j['code'] as String, level: j['level'] as String, name: j['name'] as String);
}

class Manifest {
  const Manifest({
    required this.version,
    required this.label,
    required this.sessions,
    required this.site,
    required this.levels,
    required this.packs,
    required this.comingSoon,
  });
  final String version; // "YYYY-MM"; later releases compare greater as strings
  final String label;
  final List<String> sessions;
  final String site;
  final List<Level> levels;
  final List<PackInfo> packs;
  final List<ComingSoon> comingSoon;

  factory Manifest.fromJson(Map<String, dynamic> j) => Manifest(
        version: j['version'] as String,
        label: j['label'] as String,
        sessions: List<String>.from(j['sessions'] as List),
        site: (j['site'] as String?) ?? 'https://cambridgesimulator.homilabs.org',
        levels: [for (final l in (j['levels'] as List? ?? const [])) Level.fromJson(l as Map<String, dynamic>)],
        packs: [for (final p in j['packs'] as List) PackInfo.fromJson(p as Map<String, dynamic>)],
        comingSoon: [
          for (final c in (j['coming_soon'] as List? ?? const [])) ComingSoon.fromJson(c as Map<String, dynamic>)
        ],
      );

  /// True when [other] is a newer release than this one.
  bool isOlderThan(Manifest other) => other.version.compareTo(version) > 0;
}

class Question {
  const Question({
    required this.id,
    required this.session,
    required this.paper,
    required this.variant,
    required this.number,
    required this.parts,
    required this.marks,
    required this.subtopics,
  });
  final String id; // e.g. 0625_s24_42_q7
  final String session; // e.g. 2024-MJ
  final String paper;
  final String variant;
  final String number;
  final List<String> parts;
  final double marks;
  final List<String> subtopics;

  int get year => int.parse(session.substring(0, 4));
  bool get isOctNov => session.endsWith('ON');
  String get sessionLabel => '$year ${isOctNov ? 'Oct/Nov' : 'May/June'}';
  String get paperRef => 'Paper $paper$variant';
  String get questionLabel => 'Q$number${parts.isEmpty ? '' : ' (${parts.join(', ')})'}';
  String get marksLabel {
    final m = marks == marks.roundToDouble() ? marks.toInt().toString() : marks.toString();
    return '$m mark${marks == 1 ? '' : 's'}';
  }

  /// Sort key: newest session first, then paper, variant and question order.
  int compareTo(Question other) {
    final byYear = other.year.compareTo(year);
    if (byYear != 0) return byYear;
    final bySeries = (other.isOctNov ? 1 : 0).compareTo(isOctNov ? 1 : 0);
    if (bySeries != 0) return bySeries;
    final byPaper = int.parse(paper).compareTo(int.parse(other.paper));
    if (byPaper != 0) return byPaper;
    final byVariant = int.parse(variant).compareTo(int.parse(other.variant));
    if (byVariant != 0) return byVariant;
    return int.parse(number).compareTo(int.parse(other.number));
  }

  factory Question.fromJson(Map<String, dynamic> j) => Question(
        id: j['id'] as String,
        session: j['session'] as String,
        paper: j['paper'] as String,
        variant: j['variant'] as String,
        number: j['number'] as String,
        parts: List<String>.from(j['parts'] as List),
        marks: (j['marks'] as num).toDouble(),
        subtopics: List<String>.from(j['subtopics'] as List),
      );
}

class Subtopic {
  const Subtopic({required this.name, required this.marks, required this.sessions, required this.questionIds});
  final String name;
  final double marks;
  final int sessions;
  final List<String> questionIds;

  factory Subtopic.fromJson(Map<String, dynamic> j) => Subtopic(
        name: j['name'] as String,
        marks: (j['marks'] as num).toDouble(),
        sessions: (j['sessions'] as num).toInt(),
        questionIds: List<String>.from(j['questions'] as List),
      );
}

class Topic {
  const Topic({
    required this.name,
    required this.slug,
    required this.share,
    required this.sessions,
    required this.subtopics,
    required this.questions,
  });
  final String name;
  final String slug;
  final double share;
  final int sessions;
  final List<Subtopic> subtopics;
  final List<Question> questions;

  factory Topic.fromJson(Map<String, dynamic> j) {
    final qs = [for (final q in j['questions'] as List) Question.fromJson(q as Map<String, dynamic>)]
      ..sort((a, b) => a.compareTo(b));
    return Topic(
      name: j['name'] as String,
      slug: j['slug'] as String,
      share: (j['share'] as num).toDouble(),
      sessions: (j['sessions'] as num).toInt(),
      subtopics: [for (final s in j['subtopics'] as List) Subtopic.fromJson(s as Map<String, dynamic>)],
      questions: qs,
    );
  }
}

class Subject {
  const Subject({
    required this.code,
    required this.level,
    required this.name,
    required this.papers,
    required this.officialUrl,
    required this.webUrl,
    required this.guideUrl,
    required this.sessions,
    required this.topics,
  });
  final String code;
  final String level;
  final String name;
  final Map<String, String> papers;
  final String officialUrl;
  final String webUrl;
  final String guideUrl;
  final List<String> sessions;
  final List<Topic> topics;

  int get questionCount => {for (final t in topics) ...t.questions.map((q) => q.id)}.length;

  String paperName(String paper) => papers[paper] ?? 'Paper $paper';

  /// The whole question with this id. A question whose parts cover several topics is listed once per topic, each
  /// entry holding only that topic's parts, so the slices are merged here (parts, marks and subtopics combined).
  Question? findQuestion(String id) {
    final slices = [
      for (final t in topics)
        for (final q in t.questions)
          if (q.id == id) q
    ];
    if (slices.isEmpty) return null;
    if (slices.length == 1) return slices.first;
    final first = slices.first;
    return Question(
      id: id,
      session: first.session,
      paper: first.paper,
      variant: first.variant,
      number: first.number,
      parts: _sortedParts({for (final q in slices) ...q.parts}),
      marks: slices.fold(0.0, (sum, q) => sum + q.marks),
      subtopics: {for (final q in slices) ...q.subtopics}.toList(),
    );
  }

  static List<String> _sortedParts(Set<String> parts) => parts.toList()..sort(_comparePart);

  // Part labels look like a, a(ii), b(iv)(a): compare level by level, reading roman numerals by value.
  static int _comparePart(String a, String b) {
    final ka = a.replaceAll(')', '').split('('), kb = b.replaceAll(')', '').split('(');
    for (var i = 0; i < ka.length && i < kb.length; i++) {
      final ra = i > 0 ? _roman(ka[i]) : null, rb = i > 0 ? _roman(kb[i]) : null;
      final c = (ra != null && rb != null) ? ra.compareTo(rb) : ka[i].compareTo(kb[i]);
      if (c != 0) return c;
    }
    return ka.length.compareTo(kb.length);
  }

  static int? _roman(String s) {
    const v = {'i': 1, 'v': 5, 'x': 10};
    if (s.isEmpty || !s.split('').every(v.containsKey)) return null;
    var total = 0;
    for (var i = 0; i < s.length; i++) {
      final cur = v[s[i]]!, next = i + 1 < s.length ? v[s[i + 1]]! : 0;
      total += cur < next ? -cur : cur;
    }
    return total;
  }

  factory Subject.fromJson(Map<String, dynamic> j) => Subject(
        code: j['code'] as String,
        level: j['level'] as String,
        name: j['name'] as String,
        papers: Map<String, String>.from(j['papers'] as Map),
        officialUrl: j['official_url'] as String,
        webUrl: (j['web_url'] as String?) ?? '',
        guideUrl: (j['guide_url'] as String?) ?? '',
        sessions: List<String>.from(j['sessions'] as List),
        topics: [for (final t in j['topics'] as List) Topic.fromJson(t as Map<String, dynamic>)],
      );
}

/// Banker = examined in almost every session; rare = two sessions or fewer.
enum Frequency { banker, rare, normal }

Frequency frequencyOf(int seen, int total) {
  if (total >= 4 && seen >= total - 1) return Frequency.banker;
  if (seen <= 2) return Frequency.rare;
  return Frequency.normal;
}
