part of 'login_screen_cubit.dart';

///{@template LoginScreenState}
///Giriş ekranı için state sınıfı
///{@endtemplate}
final class LoginScreenState extends Equatable {
  ///Şifre gizleme durumu
  const LoginScreenState({
    required this.isObscure,
  });

  ///isObsecure'un initial edilmesi
  const LoginScreenState.initial() : isObscure = true;

  ///Şifre gizleme durumu
  final bool isObscure;

  @override
  List<Object> get props => [isObscure];

  ///Şifre gizleme durumunu güncelle
  LoginScreenState copyWith({
    bool? isObscure,
  }) =>
      LoginScreenState(
        isObscure: isObscure ?? this.isObscure,
      );
}
