import 'package:musicify/data/interfaces/api_url_interface.dart';

///Api url'lerininin controller kısmını tutan enum
enum ControllerConstants implements ApiUrlInterface {
  ///Token bilgileri için token controller
  token('/token'),

  ///Token almak için api controller
  api('/api'),

  ///Kullanıcı bilgileri için me controller
  me('/me'),

  ///Albüm bilgileri için albums controller
  albums('/albums');

  const ControllerConstants(this.url);

  ///Controller adı
  @override
  final String url;
}
