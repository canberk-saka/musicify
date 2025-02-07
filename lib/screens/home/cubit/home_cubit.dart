import 'package:bloc/bloc.dart';
import 'package:musicify/data/datasources/remote/user_api_manager.dart';
import 'package:musicify/data/models/user.dart';

part 'home_state.dart';

///{@template homeCubit}
///Home Sayfası için Cubit
///{@endtemplate}
class HomeCubit extends Cubit<HomeState> {
  ///{@macro homeCubit}
  HomeCubit() : super(const HomeState());

  ///Kullanıcıları getir
  Future<void> getUser() async {
    final user = await UserApiManager().getUser();
    emit(state.copyWith(user: user));
  }
}
