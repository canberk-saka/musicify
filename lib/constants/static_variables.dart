///Sabit değişkenlerin tutulduğu class
abstract final class StaticVariables {
  static String _token = '';

  ///Token
  static String get token => _token;

  static set token(String token) {
    _token = token;
  }
}
