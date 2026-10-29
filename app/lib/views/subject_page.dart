import 'package:flutter/material.dart';

import '../ads.dart';
import '../app.dart';
import '../data/models.dart';
import '../widgets/common.dart';
import 'topic_page.dart';

class SubjectPage extends StatefulWidget {
  const SubjectPage({super.key, required this.code});
  final String code;

  @override
  State<SubjectPage> createState() => _SubjectPageState();
}

class _SubjectPageState extends State<SubjectPage> {
  late Future<Subject> _subject;
  String _query = '';

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _subject = AppScope.of(context).repo.subject(widget.code);
  }

  @override
  Widget build(BuildContext context) {
    final scope = AppScope.of(context);
    final levels = {for (final l in scope.repo.manifest.levels) l.id: l.short};
    return FutureBuilder<Subject>(
      future: _subject,
      builder: (context, snap) {
        final s = snap.data;
        return Scaffold(
          appBar: AppBar(
            title: Text(s == null ? widget.code : '${levels[s.level] ?? ''} ${s.name}'.trim()),
            actions: [
              if (s != null)
                PopupMenuButton<String>(
                  tooltip: 'More',
                  onSelected: (url) => openLink(context, url),
                  itemBuilder: (_) => [
                    if (s.guideUrl.isNotEmpty) PopupMenuItem(value: s.guideUrl, child: const Text('Exam guide (website)')),
                    PopupMenuItem(value: s.officialUrl, child: const Text('Official past papers')),
                  ],
                ),
            ],
          ),
          body: switch (snap) {
            AsyncSnapshot(hasError: true) => const Center(child: Text('Could not load this subject.')),
            AsyncSnapshot(hasData: false) => const Center(child: CircularProgressIndicator()),
            _ => ListenableBuilder(listenable: scope.store, builder: (context, _) => _body(context, s!)),
          },
        );
      },
    );
  }

  Widget _body(BuildContext context, Subject s) {
    final store = AppScope.of(context).store;
    final scheme = Theme.of(context).colorScheme;
    final total = s.sessions.length;
    final topics = s.topics.where((t) => _query.isEmpty || t.name.toLowerCase().contains(_query)).toList();
    return ListView(
      padding: const EdgeInsets.fromLTRB(16, 4, 16, 32),
      children: [
        Text('${s.topics.length} topics · ${formatCount(s.questionCount)} questions · code ${s.code}',
            style: TextStyle(color: scheme.onSurfaceVariant)),
        const SizedBox(height: 12),
        TextField(
          decoration: const InputDecoration(
            prefixIcon: Icon(Icons.search),
            hintText: 'Find a topic',
            border: OutlineInputBorder(),
            isDense: true,
          ),
          onChanged: (v) => setState(() => _query = v.trim().toLowerCase()),
        ),
        const SizedBox(height: 12),
        for (final t in topics) ...[
          Card(
            clipBehavior: Clip.antiAlias,
            child: InkWell(
              onTap: () async {
                await Ads.onTopicOpened();
                if (!context.mounted) return;
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => TopicPage(subject: s, topic: t)));
              },
              child: Padding(
                padding: const EdgeInsets.all(14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(children: [
                      Expanded(
                        child: Text(t.name, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                      ),
                      FrequencyBadge(frequency: frequencyOf(t.sessions, total)),
                    ]),
                    const SizedBox(height: 8),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(3),
                      child: LinearProgressIndicator(
                        value: (t.share / 35).clamp(0.02, 1.0),
                        minHeight: 5,
                        backgroundColor: scheme.outlineVariant.withValues(alpha: 0.4),
                      ),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      '${t.share.toStringAsFixed(0)}% of marks · ${t.sessions}/$total sessions · '
                      '${t.questions.length} questions · '
                      '${store.doneCount(s.code, t.questions.map((q) => q.id))} done',
                      style: TextStyle(fontSize: 13, color: scheme.onSurfaceVariant),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 8),
        ],
        if (topics.isEmpty) const Padding(padding: EdgeInsets.all(24), child: Text('No topic matches.')),
      ],
    );
  }
}
