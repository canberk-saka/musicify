part of '../../view/spotify_auth.dart';

///Spotify Auth ekranının widgetları
base mixin SpotifyAuthScreenWidgets on State<SpotifyAuthScreen> {
  ///Code challenge üreten fonksiyon
  String generateCodeChallenge(String codeVerifier) {
    // 1. Code Verifier'ı SHA-256 ile hash'le
    final bytes =
        utf8.encode(codeVerifier); // Verifier'ı UTF-8'le byte dizisine çevir
    final digest = sha256.convert(bytes); // SHA-256 hash işlemi yap

    // 2. Hash'ı Base64 formatına dönüştür
    final base64String = base64.encode(digest.bytes); // Base64 kodlama

    // 3. URL güvenli hale getirmek için karakterleri değiştir
    return base64String
        .replaceAll('+', '-')
        .replaceAll('/', '_')
        .replaceAll('=', '');
  }

  ///Code verifier üreten fonksiyon
  static String generateCodeVerifier(int length) {
    const possible =
        'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
    final random = Random();
    final text = StringBuffer();

    for (var i = 0; i < length; i++) {
      text.write(possible[random.nextInt(possible.length)]);
    }

    return text.toString();
  }

  ///Code verifier değişkeninin oluşturulması
  String codeVerifier = generateCodeVerifier(128);

  ///Code challenge değişkeninin oluşturulması
  late String codeChallenge = generateCodeChallenge(codeVerifier);

  ///Spotify client id'sini tutan değişken
  final String clientId = Env.clientId;

  ///Yönlendirme URI'sini tutan değişken
  final String redirectUri = Env.redirectUri;

  ///Spotify scope'larını tutan değişken
  final String scope =
      'user-read-private user-read-email user-follow-read playlist-read-private user-top-read';

  /// Rastgele string üreten fonksiyon
  String generateRandomString(int length) {
    const chars =
        'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
    final random = Random();
    return List.generate(length, (index) => chars[random.nextInt(chars.length)])
        .join();
  }

  Future<void> _launchSpotifyAuth() async {
    final state = generateRandomString(16);

    final url =
        'https://accounts.spotify.com/authorize?response_type=code&client_id=$clientId&scope=$scope&redirect_uri=$redirectUri&state=$state&code_challenge_method=S256&code_challenge=$codeChallenge';
    log(codeVerifier, name: 'code verifier');
    StaticVariables.codeVerifier = codeVerifier;
    await launchUrlString(
      url,
      mode: LaunchMode.inAppBrowserView,
    );
  }

  @override
  void initState() {
    super.initState();
    _launchSpotifyAuth();
  }

  ///Spotify Auth ekranı appBarı
  AppBar _appBar() => AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(context.l10n.spotifyAuth),
      );

  ///Spotify Auth ekranı body'si
  Center _body() => Center(
        child: ElevatedButton(
          onPressed: _launchSpotifyAuth,
          child: Text(context.l10n.loginWithSpotify),
        ),
      );
}
