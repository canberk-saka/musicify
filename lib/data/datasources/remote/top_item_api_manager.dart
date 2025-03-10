import 'package:musicify/constants/base_url_constants.dart';
import 'package:musicify/constants/controller_constants.dart';
import 'package:musicify/constants/query_param_constants.dart';
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
  Future<UserTopItem> getTopItem({
    required QueryParamConstants queryParamsConstants,
  }) async {
    final response = await dioGet<UserTopItem>(
      '/top/${queryParamsConstants.value}',
      UserTopItem(),
      // queryParams: {
      //   'type': 'tracks',
      // },
    );
    return UserTopItem.fromJson(response.toJson());
  }

  ///Çok dinlenen şarkıları getirir
  Future<TrackTopItem> getTracksTopItem({
    required QueryParamConstants queryParamsConstants,
  }) async {
    final response = await dioGet<TrackTopItem>(
      '/top/${queryParamsConstants.value}',
      TrackTopItem(),
      // queryParams: {
      //   'type': 'tracks',
      // },
    );
    return TrackTopItem.fromJson(response.toJson());
  }

  @override
  Future<void> load() async {}
}
