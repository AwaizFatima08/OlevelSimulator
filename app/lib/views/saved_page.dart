import 'package:flutter/material.dart';

import '../app.dart';
import '../data/models.dart';
import '../widgets/question_tile.dart';

/// Questions the student saved, grouped by subject.
class SavedPage extends StatefulWidget {
  const SavedPage({super.key});

  @override
  State<SavedPage> createState() => _SavedPageState();
}

class _SavedPageState extends State<SavedPage> {
  Future<List<(Subject, List<Question>)>> _load(BuildContext context) async {
    final scope = AppScope.of(context);
    final byCode = <String, List<String>>{};
    for (final k in scope.store.savedKeys) {
      final i = k.indexOf('|');
      if (i > 0) byCode.putIfAbsent(k.substring(0, i), () => []).add(k.substring(i + 1));
    }
    final out = <(Subject, List<Question>)>[];
    for (final code in byCode.keys) {
      if (!scope.repo.manifest.packs.any((p) => p.code == code)) continue;
      final s = await scope.repo.subject(code);
      final qs = [for (final id in byCode[code]!) ?s.findQuestion(id)]..sort((a, b) => a.compareTo(b));
      if (qs.isNotEmpty) out.add((s, qs));
    }
    return out;
  }

  @override
  Widget build(BuildContext context) {
    final store = AppScope.of(context).store;
    return Scaffold(
      appBar: AppBar(title: const Text('Saved questions')),
      body: ListenableBuilder(
        listenable: store,
        builder: (context, _) => FutureBuilder<List<(Subject, List<Question>)>>(
          future: _load(context),
          builder: (context, snap) {
            if (!snap.hasData) return const Center(child: CircularProgressIndicator());
            final groups = snap.data!;
            if (groups.isEmpty) {
              return const Center(
                child: Padding(
                  padding: EdgeInsets.all(32),
                  child: Text('Nothing saved yet. Open a question and tap Save to keep it here.',
                      textAlign: TextAlign.center),
                ),
              );
            }
            return ListView(
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 32),
              children: [
                for (final (s, qs) in groups) ...[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(4, 12, 4, 6),
                    child: Text('${s.name} ${s.code}', style: Theme.of(context).textTheme.titleMedium),
                  ),
                  for (final q in qs)
                    Padding(padding: const EdgeInsets.only(bottom: 8), child: QuestionTile(subject: s, question: q)),
                ],
              ],
            );
          },
        ),
      ),
    );
  }
}
