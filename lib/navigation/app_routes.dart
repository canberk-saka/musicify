///Uygulama route işlemleri için enum
enum AppRoutes {
  ///login sayfası
  login('login'),

  ///Kayıt olma sayfası
  signUp('signUp'),

  ///home sayfası
  home('home'),

  ///spotify auth sayfası
  spotifyAuth('spotify_auth'),

  ///wrap sayfası
  wrap('wrap'),

  ///şarkı listsi sayfası
  tracksList('tracks_ist'),

  ///sanatçı listesi sayfası
  artistsList('artists_list');

  const AppRoutes(this.name);

  ///Sayfa ismi
  final String name;

  ///Sayfa path'i
  String get path => '/$name';
}
