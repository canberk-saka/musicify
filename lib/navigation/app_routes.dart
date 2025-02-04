///Uygulama route işlemleri için enum
enum AppRoutes {
  ///login sayfası
  login('login'),

  ///home sayfası
  home('home'),

  ///spotify auth sayfası
  spotifyAuth('spotify-auth');

  const AppRoutes(this.name);

  ///Sayfa ismi
  final String name;

  ///Sayfa path'i
  String get path => name == 'home' ? '/' : '/$name';
}
