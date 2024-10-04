enum Environment { prod, development }

final class AppEnvironment {
  final Environment env;

  AppEnvironment(this.env);

  factory AppEnvironment.setUp(Environment env) {
    return AppEnvironment(env);
  }
}
