import 'dart:convert';
import 'dart:io';

import 'package:flutter/services.dart' show rootBundle;
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'models.dart';

/// Loads content packs: the copy bundled in the APK, or a newer release downloaded from the website.
///
/// Update hook: [checkForUpdate] reads `<site>/data/manifest.json`. When its `version` is newer, every pack is
/// downloaded into a version folder, parsed to make sure it is valid, and only then switched on. A failed or
/// partial download never replaces working content.
class ContentRepository {
  ContentRepository({http.Client? client, this.siteUrl = defaultSite}) : _client = client ?? http.Client();

  static const defaultSite = 'https://questionsimulator.homilabs.org';
  static const _prefsVersion = 'content_version';
  static const _prefsDir = 'content_dir';

  final http.Client _client;
  final String siteUrl;

  Manifest? _manifest;
  String? _dir; // null = bundled assets
  final Map<String, Subject> _subjects = {};

  Manifest get manifest => _manifest!;
  bool get usingDownloadedContent => _dir != null;

  Future<void> load() async {
    final bundled = Manifest.fromJson(await _readJson(null, 'manifest.json'));
    final prefs = await SharedPreferences.getInstance();
    final savedVersion = prefs.getString(_prefsVersion);
    final savedDir = prefs.getString(_prefsDir);
    if (savedVersion != null && savedDir != null && savedVersion.compareTo(bundled.version) > 0) {
      try {
        _manifest = Manifest.fromJson(await _readJson(savedDir, 'manifest.json'));
        _dir = savedDir;
        return;
      } catch (_) {
        // Downloaded copy unreadable: fall back to the bundled one.
      }
    }
    _manifest = bundled;
    _dir = null;
  }

  Future<Subject> subject(String code) async {
    final cached = _subjects[code];
    if (cached != null) return cached;
    final s = Subject.fromJson(await _readJson(_dir, '$code.json'));
    _subjects[code] = s;
    return s;
  }

  /// Returns the new release label when an update was installed, otherwise null. Never throws.
  Future<String?> checkForUpdate() async {
    try {
      final res = await _client.get(Uri.parse('$siteUrl/data/manifest.json')).timeout(const Duration(seconds: 10));
      if (res.statusCode != 200) return null;
      final remoteJson = jsonDecode(utf8.decode(res.bodyBytes)) as Map<String, dynamic>;
      final remote = Manifest.fromJson(remoteJson);
      if (!manifest.isOlderThan(remote)) return null;

      final base = await getApplicationSupportDirectory();
      final dir = Directory('${base.path}/content/${remote.version}');
      if (await dir.exists()) await dir.delete(recursive: true);
      await dir.create(recursive: true);
      for (final p in remote.packs) {
        final r = await _client.get(Uri.parse('$siteUrl${p.file}')).timeout(const Duration(seconds: 30));
        if (r.statusCode != 200) return null;
        Subject.fromJson(jsonDecode(utf8.decode(r.bodyBytes)) as Map<String, dynamic>); // validate before saving
        await File('${dir.path}/${p.code}.json').writeAsBytes(r.bodyBytes, flush: true);
      }
      await File('${dir.path}/manifest.json').writeAsString(jsonEncode(remoteJson), flush: true);

      final prefs = await SharedPreferences.getInstance();
      final oldDir = prefs.getString(_prefsDir);
      await prefs.setString(_prefsDir, dir.path);
      await prefs.setString(_prefsVersion, remote.version);
      _manifest = remote;
      _dir = dir.path;
      _subjects.clear();
      if (oldDir != null && oldDir != dir.path) {
        final old = Directory(oldDir);
        if (await old.exists()) await old.delete(recursive: true);
      }
      return remote.label;
    } catch (_) {
      return null; // offline or bad data: keep what we have
    }
  }

  Future<Map<String, dynamic>> _readJson(String? dir, String name) async {
    final text = dir == null ? await rootBundle.loadString('assets/data/$name') : await File('$dir/$name').readAsString();
    return jsonDecode(text) as Map<String, dynamic>;
  }
}
