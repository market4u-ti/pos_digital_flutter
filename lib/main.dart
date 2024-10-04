import 'package:flutter_pos_digital/core/app_environments.dart';
import 'package:flutter_pos_digital/startApp.dart';

void main() {
  const environment = Environment.prod;
  startApp(environment);
}
