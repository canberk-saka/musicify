import 'package:equatable/equatable.dart';
import 'package:musicify/base/base_cubit.dart';

part 'login_screen_state.dart';

///{@template LoginScreenCubit}
///Giriş ekranı için Cubit
///{@endtemplate}
final class LoginScreenCubit extends BaseCubit<LoginScreenState> {
  ///{@macro LoginScreenCubit}
  LoginScreenCubit() : super(const LoginScreenState.initial());

  ///Şifre gizleme durumunu değiştirir
  void changeObscure() {
    emit(state.copyWith(isObscure: !state.isObscure));
  }
}
