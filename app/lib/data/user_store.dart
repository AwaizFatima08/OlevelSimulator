import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Saved questions and "done" marks, kept only on this device. Keys look like "0625|0625_s24_42_q7" (subject code, then question id).
class UserStore extends ChangeNotifier {
  static const _savedKey = 'saved_questions';
  static const _doneKey = 'done_questions';

  final Set<String> _saved = {};
  final Set<String> _done = {};
  SharedPreferences? _prefs;

  Future<void> load() async {
    _prefs = await SharedPreferences.getInstance();
    _saved
      ..clear()
      ..addAll(_prefs!.getStringList(_savedKey) ?? const []);
    _done
      ..clear()
      ..addAll(_prefs!.getStringList(_doneKey) ?? const []);
  }

  static String key(String code, String questionId) => '$code|$questionId';

  bool isSaved(String code, String id) => _saved.contains(key(code, id));
  bool isDone(String code, String id) => _done.contains(key(code, id));
  List<String> get savedKeys => _saved.toList()..sort();

  int doneCount(String code, Iterable<String> ids) => ids.where((id) => isDone(code, id)).length;

  Future<void> toggleSaved(String code, String id) => _toggle(_saved, _savedKey, key(code, id));
  Future<void> toggleDone(String code, String id) => _toggle(_done, _doneKey, key(code, id));

  Future<void> clearAll() async {
    _saved.clear();
    _done.clear();
    await _prefs?.remove(_savedKey);
    await _prefs?.remove(_doneKey);
    notifyListeners();
  }

  Future<void> _toggle(Set<String> set, String prefsKey, String k) async {
    set.contains(k) ? set.remove(k) : set.add(k);
    notifyListeners();
    await _prefs?.setStringList(prefsKey, set.toList());
  }
}
