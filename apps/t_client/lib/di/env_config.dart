/// Env Configuration
class EnvConfig {
  /// KhaltiPublic Key from Environment
  static const khaltiKey = String.fromEnvironment('kPublic',
      defaultValue: 'test_public_key_d5d9f63743584dc38753056b0cc737d5');
}
