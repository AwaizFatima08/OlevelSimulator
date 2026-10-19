import 'package:flutter/material.dart';

import 'app.dart';
import 'data/repository.dart';
import 'data/user_store.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final repo = ContentRepository();
  final store = UserStore();
  await Future.wait([repo.load(), store.load()]);
  runApp(QuestionSimulatorApp(repo: repo, store: store));
}
