import 'package:flutter/material.dart';

import '../app.dart';
import '../data/models.dart';
import '../widgets/common.dart';
import 'about_page.dart';
import 'saved_page.dart';
import 'subject_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _checked = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (_checked) return;
    _checked = true;
    final repo = AppScope.of(context).repo;
    // Twice-yearly content releases: look for a newer manifest once per launch, quietly.
    repo.checkForUpdate().then((label) {
      if (label == null || !mounted) return;
      setState(() {});
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('New questions added: $label')));
    });
  }

  @override
  Widget build(BuildContext context) {
    final m = AppScope.of(context).repo.manifest;
    final text = Theme.of(context).textTheme;
    final scheme = Theme.of(context).colorScheme;
    final totalQ = m.packs.fold<int>(0, (a, p) => a + p.questions);

    return Scaffold(
      appBar: AppBar(
        title: const Text(appName),
        actions: [
          IconButton(
            tooltip: 'Saved questions',
            icon: const Icon(Icons.bookmark_outline),
            onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const SavedPage())),
          ),
          IconButton(
            tooltip: 'About',
            icon: const Icon(Icons.info_outline),
            onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const AboutPage())),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 32),
        children: [
          Text('Past paper questions, sorted by topic and year',
              style: text.headlineSmall?.copyWith(fontFamily: 'serif', fontWeight: FontWeight.w600)),
          const SizedBox(height: 8),
          Text('${formatCount(totalQ)} questions in ${m.packs.length} subjects · ${m.label}',
              style: text.bodyMedium?.copyWith(color: scheme.onSurfaceVariant)),
          for (final level in m.levels) ...[
            const SizedBox(height: 24),
            Text(level.name, style: text.titleLarge?.copyWith(fontFamily: 'serif', fontWeight: FontWeight.w600)),
            const SizedBox(height: 10),
            _SubjectGrid(
              packs: m.packs.where((p) => p.level == level.id).toList(),
              soon: m.comingSoon.where((c) => c.level == level.id).toList(),
            ),
          ],
          const SizedBox(height: 28),
          Text(disclaimer, style: text.bodySmall?.copyWith(color: scheme.onSurfaceVariant)),
        ],
      ),
    );
  }
}

class _SubjectGrid extends StatelessWidget {
  const _SubjectGrid({required this.packs, required this.soon});
  final List<PackInfo> packs;
  final List<ComingSoon> soon;

  @override
  Widget build(BuildContext context) {
    final cards = <Widget>[
      for (final p in packs)
        _SubjectCard(
          code: p.code,
          name: p.name,
          detail: '${formatCount(p.questions)} questions',
          onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => SubjectPage(code: p.code))),
        ),
      for (final c in soon) _SubjectCard(code: c.code, name: c.name, detail: 'Coming soon'),
    ];
    return LayoutBuilder(builder: (context, box) {
      final cols = box.maxWidth > 560 ? 3 : 2;
      final w = (box.maxWidth - (cols - 1) * 10) / cols;
      return Wrap(
        spacing: 10,
        runSpacing: 10,
        children: [for (final c in cards) SizedBox(width: w, child: c)],
      );
    });
  }
}

class _SubjectCard extends StatelessWidget {
  const _SubjectCard({required this.code, required this.name, required this.detail, this.onTap});
  final String code;
  final String name;
  final String detail;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final enabled = onTap != null;
    return Opacity(
      opacity: enabled ? 1 : 0.55,
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                  decoration: BoxDecoration(
                    color: (enabled ? scheme.primary : scheme.outline).withValues(alpha: 0.14),
                    borderRadius: BorderRadius.circular(99),
                  ),
                  child: Text(code,
                      style: TextStyle(
                          fontFamily: 'monospace',
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: enabled ? scheme.primary : scheme.outline)),
                ),
                const SizedBox(height: 8),
                Text(name, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                const SizedBox(height: 2),
                Text(detail, style: TextStyle(fontSize: 13, color: scheme.onSurfaceVariant)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
