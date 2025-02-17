import 'dart:developer';

import 'package:get_it/get_it.dart';
import 'package:musicify/data/datasources/remote/album_api_manager.dart';
import 'package:musicify/data/datasources/remote/artist_api_manager.dart';
import 'package:musicify/data/datasources/remote/auth_api_manager.dart';
import 'package:musicify/data/datasources/remote/firebase/firebase_auth_manager.dart';
import 'package:musicify/data/datasources/remote/playlist_api_manager.dart';
import 'package:musicify/data/datasources/remote/user_api_manager.dart';
import 'package:musicify/dependency_injection/interface/injectable_interface.dart';

///Bağımlılıkları kontrol etme sınıfı
abstract final class DependencyInjector {
  static final _getIt = GetIt.I;

  ///Bağımlılıkları yükleme işlemi
  static Future<void> init() async {
    await lazyRegisterer(AuthApiManager());
    await lazyRegisterer(UserApiManager());
    await lazyRegisterer(AlbumApiManager());
    await lazyRegisterer(FirebaseAuthManager());
    await lazyRegisterer(PlaylistApiManager());
    await lazyRegisterer(ArtistApiManager());
  }

  ///Bağımlılıkları kontrol etme işlemi
  static Future<void> lazyRegisterer<T extends InjectableInterface>(T object) async {
    try {
      if (_getIt.isRegistered<T>()) {
        await reset<T>();
        return;
      }
      _getIt.registerLazySingleton<T>(() => object);
      await read<T>().load();
    } on Exception catch (e) {
      log(e.toString());
    }
  }

  ///Bağımlılıkları okuma işlemi
  static T read<T extends InjectableInterface>() => _getIt<T>();

  ///Bağımlılıkları sıfırlama işlemi
  static Future<void> reset<T extends InjectableInterface>() async {
    await _getIt.resetLazySingleton<T>(instance: _getIt<T>());
  }
}
