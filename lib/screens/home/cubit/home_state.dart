part of 'home_cubit.dart';

///{@template homeState}
///Home sayfası için state sınıfı
///{@endtemplate}

final class HomeState extends Equatable {
  ///Kullanıcı bilgileri
  const HomeState({
    this.userPlaylists,
    this.isLoading = true,
    this.user,
    this.albums,
    this.artist,
  });

  ///Kullanıcı bilgilerinin tutulduğu değişken
  final User? user;

  ///Albüm bilgilerinin tutulduğu değişken
  final NewReleasesAlbum? albums;

  ///Kullanıcının playlistlerinin tutulduğu değişken
  final UserPlaylists? userPlaylists;

  ///Takip edilen sanatçı bilgilerinin tutulduğu değişken
  final Artist? artist;

  ///Sayfanın yüklenip yüklenmediğini tutar
  final bool? isLoading;

  ///Kullanıcı bilgilerini güncelle
  HomeState copyWith({User? user, NewReleasesAlbum? albums, UserPlaylists? userPlaylist, Artist? artist, bool? isLoading}) => HomeState(
        user: user ?? this.user,
        albums: albums ?? this.albums,
        userPlaylists: userPlaylist ?? userPlaylists,
        artist: artist ?? this.artist,
        isLoading: isLoading ?? this.isLoading,
      );

  @override
  List<Object?> get props => [user, albums, userPlaylists, artist, isLoading];
}
