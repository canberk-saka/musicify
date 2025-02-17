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
  HomeState copyWith({
    ValueGetter<User?>? user,
    ValueGetter<NewReleasesAlbum?>? albums,
    ValueGetter<UserPlaylists?>? userPlaylist,
    ValueGetter<Artist?>? artist,
    ValueGetter<bool?>? isLoading,
  }) =>
      HomeState(
        user: user?.call() ?? this.user,
        albums: albums?.call() ?? this.albums,
        userPlaylists: userPlaylist?.call() ?? userPlaylists,
        artist: artist?.call() ?? this.artist,
        isLoading: isLoading?.call() ?? this.isLoading,
      );

  @override
  List<Object?> get props => [user, albums, userPlaylists, artist, isLoading];
}
