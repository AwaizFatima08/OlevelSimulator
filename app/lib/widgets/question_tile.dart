import 'package:flutter/material.dart';

import '../app.dart';
import '../data/models.dart';
import 'common.dart';

/// One past paper question: where it is, its marks and subtopics, with done/saved controls.
class QuestionTile extends StatelessWidget {
  const QuestionTile({super.key, required this.subject, required this.question});
  final Subject subject;
  final Question question;

  @override
  Widget build(BuildContext context) {
    final store = AppScope.of(context).store;
    final scheme = Theme.of(context).colorScheme;
    final q = question;
    return ListenableBuilder(
      listenable: store,
      builder: (context, _) {
        final done = store.isDone(subject.code, q.id);
        final saved = store.isSaved(subject.code, q.id);
        return Card(
          clipBehavior: Clip.antiAlias,
          child: InkWell(
            onTap: () => showQuestionSheet(context, subject, q),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(4, 6, 12, 6),
              child: Row(
                children: [
                  Checkbox(
                    value: done,
                    semanticLabel: 'Mark as done',
                    onChanged: (_) => store.toggleDone(subject.code, q.id),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('${q.sessionLabel} · ${q.paperRef} · ${q.questionLabel}',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              decoration: done ? TextDecoration.lineThrough : null,
                            )),
                        const SizedBox(height: 2),
                        Text(q.subtopics.join(' · '),
                            style: TextStyle(fontSize: 13, color: scheme.onSurfaceVariant)),
                      ],
                    ),
                  ),
                  const SizedBox(width: 8),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(q.marksLabel, style: TextStyle(fontWeight: FontWeight.w600, color: scheme.primary)),
                      if (saved) Icon(Icons.bookmark, size: 18, color: scheme.primary),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

Future<void> showQuestionSheet(BuildContext context, Subject subject, Question q) {
  return showModalBottomSheet<void>(
    context: context,
    showDragHandle: true,
    isScrollControlled: true, // the sheet grows to fit its content instead of stopping at half height
    builder: (context) {
      final store = AppScope.of(context).store;
      final text = Theme.of(context).textTheme;
      return ListenableBuilder(
        listenable: store,
        builder: (context, _) {
          final done = store.isDone(subject.code, q.id);
          final saved = store.isSaved(subject.code, q.id);
          return SafeArea(
            child: SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('${subject.name} ${subject.code}', style: text.labelLarge),
                  const SizedBox(height: 4),
                  Text('${q.sessionLabel} · ${q.paperRef} · ${q.questionLabel}', style: text.titleLarge),
                  const SizedBox(height: 12),
                  _row(context, 'Paper', '${subject.paperName(q.paper)} (variant ${q.variant})'),
                  _row(context, 'Marks', q.marksLabel),
                  _row(context, 'Subtopics', q.subtopics.join(', ')),
                  const SizedBox(height: 8),
                  Text(
                    'Find this question in the ${q.sessionLabel} paper ${q.paper}${q.variant}. '
                    'Get the paper from the official Cambridge website or your school.',
                    style: text.bodySmall,
                  ),
                  const SizedBox(height: 16),
                  Wrap(spacing: 8, runSpacing: 8, children: [
                    FilledButton.tonalIcon(
                      onPressed: () => store.toggleDone(subject.code, q.id),
                      icon: Icon(done ? Icons.check_circle : Icons.radio_button_unchecked),
                      label: Text(done ? 'Done' : 'Mark done'),
                    ),
                    FilledButton.tonalIcon(
                      onPressed: () => store.toggleSaved(subject.code, q.id),
                      icon: Icon(saved ? Icons.bookmark : Icons.bookmark_outline),
                      label: Text(saved ? 'Saved' : 'Save'),
                    ),
                    OutlinedButton.icon(
                      onPressed: () => openLink(context, subject.officialUrl),
                      icon: const Icon(Icons.open_in_new),
                      label: const Text('Official past papers'),
                    ),
                  ]),
                ],
              ),
            ),
          );
        },
      );
    },
  );
}

Widget _row(BuildContext context, String label, String value) => Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(
            width: 84,
            child: Text(label, style: TextStyle(color: Theme.of(context).colorScheme.onSurfaceVariant))),
        Expanded(child: Text(value)),
      ]),
    );
