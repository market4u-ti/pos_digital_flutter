import 'package:flutter_pos_digital/core/app_environments.dart';
import 'package:flutter_pos_digital/startApp.dart';

Future<void> main() async {
  const environment = Environment.development;
  startApp(environment);
}
