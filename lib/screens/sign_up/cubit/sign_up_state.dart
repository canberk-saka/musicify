part of 'sign_up_cubit.dart';

///{@template SignUpState}
///Kayıt olma ekranı için state sınıfı
///{@endtemplate}
final class SignUpState extends Equatable {
  ///Şifre gizleme durumu
  const SignUpState({
    required this.isObscure,
  });

  ///isObsecure'un initial edilmesi
  const SignUpState.initial() : isObscure = true;

  ///Şifre gizleme durumu
  final bool isObscure;
  @override
  List<Object> get props => [isObscure];

  ///Şifre gizleme durumunu güncelle
  SignUpState copyWith({
    bool? isObscure,
  }) =>
      SignUpState(
        isObscure: isObscure ?? this.isObscure,
      );
}
