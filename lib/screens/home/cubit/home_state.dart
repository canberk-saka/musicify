part of 'home_cubit.dart';

///{@template homeState}
///Home sayfası için state sınıfı
///{@endtemplate}

final class HomeState extends Equatable {
  ///Kullanıcı bilgileri
  const HomeState({
    this.user,
    this.albums,
  });

  ///Kullanıcı bilgilerinin tutulduğu değişken
  final User? user;

  ///Albüm bilgilerinin tutulduğu değişken
  final NewReleasesAlbum? albums;

  ///Kullanıcı bilgilerini güncelle
  HomeState copyWith({User? user, NewReleasesAlbum? albums}) => HomeState(user: user ?? this.user, albums: albums ?? this.albums);

  @override
  List<Object?> get props => [user, albums];
}
