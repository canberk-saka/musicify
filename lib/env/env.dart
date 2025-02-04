// lib/env/env.dart
import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(path: '.env')

/// Environment sınıfı
abstract final class Env {
  /// Client ID
  @EnviedField(varName: 'CLIENT_ID', obfuscate: true)
  static final String clientId = _Env.clientId;

  /// Redirect URI
  @EnviedField(varName: 'REDIRECT_URI')
  static const String redirectUri = _Env.redirectUri;
}
