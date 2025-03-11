import 'package:musicify/constants/base_url_constants.dart';
import 'package:musicify/constants/controller_constants.dart';
import 'package:musicify/data/datasources/remote/base_api_manager.dart';
import 'package:musicify/data/models/track_top_item.dart';
import 'package:musicify/data/models/user_top_item.dart';

///{@template topItemApiManager}
///Top Item Api Manager
///{@endtemplate}
final class TopItemApiManager extends BaseApiManager {
  ///{@macro topItemApiManager}
  TopItemApiManager() : super(BaseUrlConstants.spotifyBaseApiUrl, ControllerConstants.me);

  ///Kullanıcının en çok dinlediği şarkıları getirir
  Future<UserTopItem> getArtistTopItem({
    required String term,
  }) async {
    final response = await dioGet<UserTopItem>(
      '/top/artists',
      UserTopItem(),
      queryParams: {
        'time_range': term,
      },
    );
    return UserTopItem.fromJson(response.toJson());
  }

  ///Çok dinlenen şarkıları getirir
  Future<TrackTopItem> getTracksTopItem({
    required String term,
  }) async {
    final response = await dioGet<TrackTopItem>(
      '/top/tracks',
      TrackTopItem(),
      queryParams: {
        'time_range': term,
      },
    );
    return TrackTopItem.fromJson(response.toJson());
  }

  @override
  Future<void> load() async {}
}
