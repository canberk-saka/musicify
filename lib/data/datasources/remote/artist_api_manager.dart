import 'package:musicify/constants/base_url_constants.dart';
import 'package:musicify/constants/controller_constants.dart';
import 'package:musicify/data/datasources/remote/base_api_manager.dart';
import 'package:musicify/data/models/followed_artist.dart';

///{@template artistApiManager}
///Artist Api Manager
///{@endtemplate}
final class ArtistApiManager extends BaseApiManager {
  ///{@macro artistApiManager}
  ArtistApiManager() : super(BaseUrlConstants.spotifyBaseApiUrl, ControllerConstants.me);

  ///Sanatçıyı getirme işlemi
  Future<Artist> getFollowedArtist() async {
    final artist = await dioGet(
      '/following',
      Artist(),
      queryParams: {
        'type': 'artist',
      },
    );
    return artist;
  }

  @override
  Future<void> load() async {}
}
