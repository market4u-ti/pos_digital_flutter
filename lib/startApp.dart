import 'package:flutter/material.dart';
import 'package:flutter_pos_digital/core/app_environments.dart';
import 'package:flutter_pos_digital/my_app.dart';

Future<void> startApp(Environment env) async {
  final appEnv = AppEnvironment.setUp(env);

  runApp(const MyApp());
}
