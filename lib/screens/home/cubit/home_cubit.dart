import 'package:equatable/equatable.dart';
import 'package:musicify/base/base_cubit.dart';
import 'package:musicify/data/datasources/remote/album_api_manager.dart';
import 'package:musicify/data/datasources/remote/auth_api_manager.dart';
import 'package:musicify/data/datasources/remote/user_api_manager.dart';
import 'package:musicify/data/models/new_releases_album.dart';
import 'package:musicify/data/models/user.dart';
import 'package:musicify/dependency_injection/dependency_injector.dart';

part 'home_state.dart';

///{@template homeCubit}
///Home Sayfası için Cubit
///{@endtemplate}
class HomeCubit extends BaseCubit<HomeState> {
  ///{@macro homeCubit}
  HomeCubit() : super(const HomeState());

  ///Token alma işlemi
  Future<void> getAuth() async {
    await DependencyInjector.read<AuthApiManager>().getAuth();
  }

  ///Kullanıcıları getir
  Future<void> getUser() async {
    final user = await DependencyInjector.read<UserApiManager>().getUser();
    emit(state.copyWith(user: user));
  }

  ///Yeni albümleri getirme işlemi
  Future<void> getNewAlbums() async {
    final albums = await DependencyInjector.read<AlbumApiManager>().getNewAlbums();
    emit(state.copyWith(albums: albums));
  }
}
