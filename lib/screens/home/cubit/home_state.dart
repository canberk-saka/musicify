part of 'home_cubit.dart';

///{@template homeState}
///Home sayfası için state sınıfı
///{@endtemplate}

final class HomeState extends Equatable {
  ///Kullanıcı bilgileri
  const HomeState({this.user});

  ///Kullanıcı bilgilerinin tutulduğu değişken
  final User? user;

  ///Kullanıcı bilgilerini güncelle
  HomeState copyWith({User? user}) => HomeState(user: user ?? this.user);

  @override
  List<Object?> get props => [user];
}
