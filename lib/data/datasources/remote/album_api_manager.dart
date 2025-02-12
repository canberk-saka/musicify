import 'package:musicify/constants/base_url_constants.dart';
import 'package:musicify/constants/controller_constants.dart';
import 'package:musicify/data/datasources/remote/base_api_manager.dart';
import 'package:musicify/data/models/new_releases_album.dart';

///{@template albumApiManager}
///Album Api Manager
///{@endtemplate}
final class AlbumApiManager extends BaseApiManager {
  ///{@macro albumApiManager}
  AlbumApiManager() : super(BaseUrlConstants.spotifyBaseApiUrl, ControllerConstants.browse);

  ///Yeni albümleri getirme işlemi
  Future<NewReleasesAlbum> getNewAlbums() async {
    final newReleasesAlbums = await dioGet(ControllerConstants.newRealeases.url, NewReleasesAlbum(), queryParams: {});
    return newReleasesAlbums;
  }

  @override
  Future<void> load() async {}
}
