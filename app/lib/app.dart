import 'package:flutter/material.dart';

import 'data/repository.dart';
import 'data/user_store.dart';
import 'views/home_page.dart';

const appName = 'Question Simulator';
const appFullName = 'Question Simulator';
const appVersion = '0.2.1';

/// Gives every page access to the content repository and the on-device store.
class AppScope extends InheritedWidget {
  const AppScope({super.key, required this.repo, required this.store, required super.child});
  final ContentRepository repo;
  final UserStore store;

  static AppScope of(BuildContext context) => context.dependOnInheritedWidgetOfExactType<AppScope>()!;

  @override
  bool updateShouldNotify(AppScope oldWidget) => repo != oldWidget.repo || store != oldWidget.store;
}

// Colours follow the website (HomiLabs green on warm paper).
const _green = Color(0xFF1F6F5C);
const _greenDark = Color(0xFF5CC4A6);
const gold = Color(0xFFB45309);
const goldDark = Color(0xFFF0B35C);
const rareInk = Color(0xFF6B5B95);
const rareInkDark = Color(0xFFC3B4EC);

ThemeData _theme(Brightness b) {
  final dark = b == Brightness.dark;
  final scheme = ColorScheme.fromSeed(
    seedColor: _green,
    brightness: b,
    primary: dark ? _greenDark : _green,
    surface: dark ? const Color(0xFF20221D) : const Color(0xFFFFFDF9),
  );
  return ThemeData(
    colorScheme: scheme,
    scaffoldBackgroundColor: dark ? const Color(0xFF121310) : const Color(0xFFF5F1EA),
    appBarTheme: AppBarTheme(
      backgroundColor: dark ? const Color(0xFF121310) : const Color(0xFFF5F1EA),
      surfaceTintColor: Colors.transparent,
      centerTitle: false,
    ),
    cardTheme: CardThemeData(
      elevation: 0,
      color: scheme.surface,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
        side: BorderSide(color: dark ? const Color(0xFF313329) : const Color(0xFFDDD5C7)),
      ),
    ),
    useMaterial3: true,
  );
}

class QuestionSimulatorApp extends StatelessWidget {
  const QuestionSimulatorApp({super.key, required this.repo, required this.store});
  final ContentRepository repo;
  final UserStore store;

  @override
  Widget build(BuildContext context) {
    return AppScope(
      repo: repo,
      store: store,
      child: MaterialApp(
        title: appName,
        debugShowCheckedModeBanner: false,
        theme: _theme(Brightness.light),
        darkTheme: _theme(Brightness.dark),
        home: const HomePage(),
      ),
    );
  }
}
