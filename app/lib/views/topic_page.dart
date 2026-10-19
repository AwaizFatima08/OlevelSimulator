import 'package:flutter/material.dart';

import '../data/models.dart';
import '../widgets/common.dart';
import '../widgets/question_tile.dart';

class TopicPage extends StatelessWidget {
  const TopicPage({super.key, required this.subject, required this.topic});
  final Subject subject;
  final Topic topic;

  @override
  Widget build(BuildContext context) {
    final total = subject.sessions.length;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(topic.name),
          bottom: const TabBar(tabs: [Tab(text: 'By year'), Tab(text: 'Similar'), Tab(text: 'Subtopics')]),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 10, 16, 4),
              child: Row(children: [
                Expanded(
                  child: Text(
                    '${topic.questions.length} questions · ${topic.share.toStringAsFixed(0)}% of marks · '
                    'in ${topic.sessions} of $total sessions',
                    style: TextStyle(color: Theme.of(context).colorScheme.onSurfaceVariant),
                  ),
                ),
                FrequencyBadge(frequency: frequencyOf(topic.sessions, total)),
              ]),
            ),
            Expanded(
              child: TabBarView(children: [
                _ByYear(subject: subject, topic: topic),
                _Similar(subject: subject, topic: topic),
                _Subtopics(subject: subject, topic: topic),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}

class _ByYear extends StatefulWidget {
  const _ByYear({required this.subject, required this.topic});
  final Subject subject;
  final Topic topic;

  @override
  State<_ByYear> createState() => _ByYearState();
}

class _ByYearState extends State<_ByYear> with AutomaticKeepAliveClientMixin {
  int? _year; // null = all years
  String? _paper; // null = all papers

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final qs = widget.topic.questions;
    final years = {for (final q in qs) q.year}.toList()..sort((a, b) => b.compareTo(a));
    final papers = {for (final q in qs) q.paper}.toList()..sort((a, b) => int.parse(a).compareTo(int.parse(b)));
    final shown = qs.where((q) => (_year == null || q.year == _year) && (_paper == null || q.paper == _paper)).toList();

    final children = <Widget>[];
    int? lastYear;
    for (final q in shown) {
      if (q.year != lastYear) {
        lastYear = q.year;
        children.add(Padding(
          padding: const EdgeInsets.fromLTRB(4, 16, 4, 6),
          child: Text('${q.year}', style: Theme.of(context).textTheme.titleMedium),
        ));
      }
      children.add(Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: QuestionTile(subject: widget.subject, question: q),
      ));
    }

    return ListView(
      padding: const EdgeInsets.fromLTRB(16, 4, 16, 32),
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(children: [
            Padding(
              padding: const EdgeInsets.only(right: 6),
              child: ChoiceChip(
                  label: const Text('All years'),
                  selected: _year == null,
                  onSelected: (_) => setState(() => _year = null)),
            ),
            for (final y in years)
              Padding(
                padding: const EdgeInsets.only(right: 6),
                child: ChoiceChip(
                    label: Text('$y'), selected: _year == y, onSelected: (_) => setState(() => _year = y)),
              ),
          ]),
        ),
        const SizedBox(height: 8),
        DropdownButtonFormField<String?>(
          initialValue: _paper,
          isExpanded: true,
          decoration: const InputDecoration(labelText: 'Paper', border: OutlineInputBorder(), isDense: true),
          items: [
            const DropdownMenuItem<String?>(value: null, child: Text('All papers')),
            for (final p in papers)
              DropdownMenuItem<String?>(
                  value: p, child: Text(widget.subject.paperName(p), overflow: TextOverflow.ellipsis)),
          ],
          onChanged: (v) => setState(() => _paper = v),
        ),
        ...children,
        if (shown.isEmpty) const Padding(padding: EdgeInsets.all(24), child: Text('No questions match this filter.')),
        const SizedBox(height: 12),
        Text('"Paper 42" means Paper 4, variant 2. Tap a question for details.',
            style: Theme.of(context).textTheme.bodySmall),
      ],
    );
  }
}

class _Similar extends StatelessWidget {
  const _Similar({required this.subject, required this.topic});
  final Subject subject;
  final Topic topic;

  @override
  Widget build(BuildContext context) {
    final byId = {for (final q in topic.questions) q.id: q};
    final total = subject.sessions.length;
    final groups = <(Subtopic, List<Question>)>[];
    for (final st in topic.subtopics) {
      final qs = [for (final id in st.questionIds) ?byId[id]]..sort((a, b) => a.compareTo(b));
      if ({for (final q in qs) q.session}.length >= 2) groups.add((st, qs));
    }
    if (groups.isEmpty) {
      return const Center(child: Text('No subtopic here has appeared in more than one session yet.'));
    }
    return ListView(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 32),
      children: [
        Text('Questions that test the same subtopic in different years. Practise them together.',
            style: Theme.of(context).textTheme.bodyMedium),
        const SizedBox(height: 8),
        for (final (st, qs) in groups)
          Card(
            margin: const EdgeInsets.only(bottom: 8),
            clipBehavior: Clip.antiAlias,
            child: ExpansionTile(
              title: Text(st.name, style: const TextStyle(fontWeight: FontWeight.w600)),
              subtitle: Text('${qs.length} questions · ${st.sessions}/$total sessions'),
              trailing: FrequencyBadge(frequency: frequencyOf(st.sessions, total)),
              childrenPadding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
              children: [
                for (final q in qs)
                  Padding(
                    padding: const EdgeInsets.only(bottom: 6),
                    child: QuestionTile(subject: subject, question: q),
                  ),
              ],
            ),
          ),
      ],
    );
  }
}

class _Subtopics extends StatelessWidget {
  const _Subtopics({required this.subject, required this.topic});
  final Subject subject;
  final Topic topic;

  @override
  Widget build(BuildContext context) {
    final total = subject.sessions.length;
    final scheme = Theme.of(context).colorScheme;
    return ListView.separated(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 32),
      itemCount: topic.subtopics.length,
      separatorBuilder: (_, _) => const Divider(height: 1),
      itemBuilder: (context, i) {
        final st = topic.subtopics[i];
        final marks = st.marks == st.marks.roundToDouble() ? st.marks.toInt().toString() : st.marks.toString();
        return ListTile(
          contentPadding: const EdgeInsets.symmetric(horizontal: 4),
          title: Text(st.name),
          subtitle: Text('$marks marks · ${st.sessions}/$total sessions · ${st.questionIds.length} questions',
              style: TextStyle(color: scheme.onSurfaceVariant)),
          trailing: FrequencyBadge(frequency: frequencyOf(st.sessions, total)),
        );
      },
    );
  }
}
