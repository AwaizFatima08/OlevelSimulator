import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../app.dart';
import '../data/models.dart';

/// "Banker" / "Rare" pill, matching the website badges.
class FrequencyBadge extends StatelessWidget {
  const FrequencyBadge({super.key, required this.frequency});
  final Frequency frequency;

  @override
  Widget build(BuildContext context) {
    if (frequency == Frequency.normal) return const SizedBox.shrink();
    final dark = Theme.of(context).brightness == Brightness.dark;
    final banker = frequency == Frequency.banker;
    final ink = banker ? (dark ? goldDark : gold) : (dark ? rareInkDark : rareInk);
    return Semantics(
      label: banker ? 'Banker topic, tested in almost every session' : 'Rarely tested',
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
        decoration: BoxDecoration(color: ink.withValues(alpha: 0.14), borderRadius: BorderRadius.circular(99)),
        child: Text(
          banker ? 'BANKER' : 'RARE',
          style: TextStyle(color: ink, fontSize: 11, fontWeight: FontWeight.w700, letterSpacing: 0.5),
        ),
      ),
    );
  }
}

Future<void> openLink(BuildContext context, String url) async {
  final ok = await launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
  if (!ok && context.mounted) {
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Could not open the link.')));
  }
}

/// Footer text shown on the home and about pages.
const disclaimer = 'Independent, non-profit study aid by HomiLabs. Not affiliated with, endorsed by or connected to '
    'Cambridge University Press & Assessment. "Cambridge", "IGCSE" and "O Level" are trademarks of Cambridge '
    'University Press & Assessment, used only to describe which exams the questions come from. Get the papers '
    'themselves from cambridgeinternational.org or your school.';
