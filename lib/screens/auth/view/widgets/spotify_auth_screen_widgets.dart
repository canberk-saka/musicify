part of '../../view/spotify_auth.dart';

base mixin SpotifyAuthScreenWidgets on State<SpotifyAuthScreen> {
  final String clientId = Env.clientId;
  final String redirectUri = Env.redirectUri;
  final String scope = 'user-read-private user-read-email';

  // Rastgele string üreten fonksiyon
  String generateRandomString(int length) {
    const chars = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
    final random = Random();
    return List.generate(length, (index) => chars[random.nextInt(chars.length)]).join();
  }

  Future<void> _launchSpotifyAuth() async {
    final state = generateRandomString(16);

    final url = 'https://accounts.spotify.com/authorize?response_type=code&client_id=$clientId&scope=$scope&redirect_uri=$redirectUri&state=$state';
    log(url);
    await launchUrlString(
      url,
      mode: LaunchMode.inAppBrowserView,
    );
    // URL'yi aç
    // if (await canLaunchUrl(launchUri)) {
    //   await launchUrl(launchUri);
    // } else($e) {
    //   throw 'Spotify Auth URL could not be launched. $e'; // Eğer açılmadıysa hata ver
    // };
  }

  ///Spotify Auth ekranı appBarı
  AppBar _appBar() {
    return AppBar(
      title: Text(context.l10n.spotifyAuth),
    );
  }

  ///Spotify Auth ekranı body'si
  Center _body() {
    return Center(
      child: ElevatedButton(
        onPressed: _launchSpotifyAuth, // Spotify auth işlemini başlat
        child: Text(context.l10n.loginWithSpotify),
      ),
    );
  }
}
