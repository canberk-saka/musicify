part of 'home_cubit.dart';

///{@template homeState}
///Home sayfası için state sınıfı
///{@endtemplate}

final class HomeState {
  ///Kullanıcı bilgileri
  const HomeState({this.user});

  ///Kullanıcı bilgilerinin tutulduğu değişken
  final User? user;

  ///Kullanıcı bilgilerini güncelle
  HomeState copyWith({User? user}) => HomeState(user: user ?? this.user);
}
