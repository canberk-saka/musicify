import 'package:equatable/equatable.dart';
import 'package:musicify/base/base_cubit.dart';

part 'sign_up_state.dart';

///{@template SignUpCubit}
///Kayıt olma ekranı için Cubit
///{@endtemplate}
final class SignUpCubit extends BaseCubit<SignUpState> {
  ///{@macro SignUpCubit}
  SignUpCubit() : super(const SignUpState.initial());

  ///Şifre gizleme durumunu değiştirir
  void changeObscure() {
    emit(state.copyWith(isObscure: !state.isObscure));
  }
}
