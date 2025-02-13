part of 'home_cubit.dart';

///{@template homeState}
///Home sayfası için state sınıfı
///{@endtemplate}

final class HomeState extends Equatable {
  ///Kullanıcı bilgileri
  const HomeState({
    this.isLoading = true,
    this.user,
    this.albums,
  });

  ///Kullanıcı bilgilerinin tutulduğu değişken
  final User? user;

  ///Albüm bilgilerinin tutulduğu değişken
  final NewReleasesAlbum? albums;

  ///Sayfanın yüklenip yüklenmediğini tutar
  final bool? isLoading;

  ///Kullanıcı bilgilerini güncelle
  HomeState copyWith({User? user, NewReleasesAlbum? albums, bool? isLoading}) =>
      HomeState(user: user ?? this.user, albums: albums ?? this.albums, isLoading: isLoading ?? this.isLoading);

  @override
  List<Object?> get props => [user, albums, isLoading];
}
