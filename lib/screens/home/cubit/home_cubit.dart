import 'package:equatable/equatable.dart';
import 'package:musicify/base/base_cubit.dart';
import 'package:musicify/data/datasources/remote/auth_api_manager.dart';
import 'package:musicify/data/datasources/remote/user_api_manager.dart';
import 'package:musicify/data/models/user.dart';

part 'home_state.dart';

///{@template homeCubit}
///Home Sayfası için Cubit
///{@endtemplate}
class HomeCubit extends BaseCubit<HomeState> {
  ///{@macro homeCubit}
  HomeCubit() : super(const HomeState());

  ///Token alma işlemi
  Future<void> getAuth() async {
    await AuthApiManager().getAuth();
  }

  ///Kullanıcıları getir
  Future<void> getUser() async {
    final user = await UserApiManager().getUser();
    emit(state.copyWith(user: user));
  }
}
