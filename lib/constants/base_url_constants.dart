import 'package:musicify/data/interfaces/api_url_interface.dart';

///Api url'lerini tutan enum
enum BaseUrlConstants implements ApiUrlInterface {
  ///Spotify base url
  spotifyBaseApiUrl('https://api.spotify.com/v1'),

  ///Spotify auth base url
  authApiUrl('https://accounts.spotify.com');

  const BaseUrlConstants(this.url);

  ///Base url
  @override
  final String url;

  ///Base url'yi döndürür
  String operator +(ApiUrlInterface other) => url + other.url;
}
