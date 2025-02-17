import 'package:musicify/constants/base_url_constants.dart';
import 'package:musicify/constants/controller_constants.dart';
import 'package:musicify/data/datasources/remote/base_api_manager.dart';
import 'package:musicify/data/models/user_playlist.dart';

///{@template playlistApiManager}
///Playlist Api Manager
///{@endtemplate}
final class PlaylistApiManager extends BaseApiManager {
  ///{@macro playlistApiManager}
  PlaylistApiManager() : super(BaseUrlConstants.spotifyBaseApiUrl, ControllerConstants.users);

  ///Kullanıcı playlistlerini getirme işlemi
  Future<UserPlaylists> getUsersPlaylist(String userID) async {
    final userPlaylists = await dioGet('/$userID/playlists', UserPlaylists(), queryParams: UserPlaylists(offset: 0, limit: 20).toJson());
    return userPlaylists;
  }

  @override
  Future<void> load() async {}
}
