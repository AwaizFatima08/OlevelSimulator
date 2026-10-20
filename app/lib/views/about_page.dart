import 'package:flutter/material.dart';

import '../app.dart';
import '../widgets/common.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  bool _checking = false;

  Future<void> _check() async {
    setState(() => _checking = true);
    final label = await AppScope.of(context).repo.checkForUpdate();
    if (!mounted) return;
    setState(() => _checking = false);
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(label == null ? 'You have the latest questions.' : 'New questions added: $label'),
    ));
  }

  Future<void> _clear() async {
    final ok = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Clear saved and done marks?'),
        content: const Text('This removes every saved question and done tick on this device.'),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context, false), child: const Text('Cancel')),
          FilledButton(onPressed: () => Navigator.pop(context, true), child: const Text('Clear')),
        ],
      ),
    );
    if (ok == true && mounted) await AppScope.of(context).store.clearAll();
  }

  @override
  Widget build(BuildContext context) {
    final repo = AppScope.of(context).repo;
    final m = repo.manifest;
    final text = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(title: const Text('About')),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(20, 8, 20, 32),
        children: [
          Text(appFullName, style: text.titleLarge),
          const SizedBox(height: 4),
          Text('Version $appVersion · questions release ${m.version} (${m.label})'),
          const SizedBox(height: 16),
          const Text(
            'A free, non-profit study aid. Every question part in recent Cambridge past papers is tagged with its '
            'topic, subtopic and marks, so you can see what is asked, how often, and practise one skill across many '
            'years. New questions are added after each May/June and Oct/Nov exam series.',
          ),
          const SizedBox(height: 12),
          const Text(
            'The app does not contain question papers, mark schemes or examiner reports. '
            'Get the papers from the official Cambridge website or your school.',
          ),
          const SizedBox(height: 20),
          Wrap(spacing: 8, runSpacing: 8, children: [
            FilledButton.tonalIcon(
              onPressed: _checking ? null : _check,
              icon: _checking
                  ? const SizedBox(width: 18, height: 18, child: CircularProgressIndicator(strokeWidth: 2))
                  : const Icon(Icons.sync),
              label: const Text('Check for new questions'),
            ),
            OutlinedButton.icon(
              onPressed: () => openLink(context, m.site),
              icon: const Icon(Icons.public),
              label: const Text('Website'),
            ),
          ]),
          const SizedBox(height: 24),
          Text('Privacy', style: text.titleMedium),
          const SizedBox(height: 4),
          const Text(
            'No account, no ads, no analytics. Saved questions and done marks stay on this device. '
            'The app only contacts the website to check for new questions.',
          ),
          const SizedBox(height: 8),
          Align(
            alignment: Alignment.centerLeft,
            child: TextButton(onPressed: _clear, child: const Text('Clear saved and done marks')),
          ),
          const SizedBox(height: 16),
          Text('Contact', style: text.titleMedium),
          const SizedBox(height: 4),
          const Text('Wrong tag or missing question? Email homilabs.smc@gmail.com. Rights holders can use the same '
              'address to ask for anything to be removed.'),
          const SizedBox(height: 24),
          Text(disclaimer, style: text.bodySmall),
        ],
      ),
    );
  }
}
