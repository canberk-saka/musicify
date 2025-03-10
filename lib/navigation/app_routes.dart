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
  wrap('wrap');

  const AppRoutes(this.name);

  ///Sayfa ismi
  final String name;

  ///Sayfa path'i
  String get path => '/$name';
}
