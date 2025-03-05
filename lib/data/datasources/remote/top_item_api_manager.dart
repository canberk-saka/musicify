import 'package:musicify/constants/base_url_constants.dart';
import 'package:musicify/constants/controller_constants.dart';
import 'package:musicify/data/datasources/remote/base_api_manager.dart';
import 'package:musicify/data/models/top_item_info.dart';

///{@template topItemApiManager}
///Top Item Api Manager
///{@endtemplate}
final class TopItemApiManager extends BaseApiManager {
  ///{@macro topItemApiManager}
  TopItemApiManager()
      : super(BaseUrlConstants.spotifyBaseApiUrl, ControllerConstants.me);

  ///Get top item
  Future<TopItemInfo> getTopItem() async {
    final response = await dioGet<TopItemInfo>(
        '/top/artists', TopItemInfo()); // TODO(canberk): Endpoint'i düzelt
    return TopItemInfo.fromJson(response.toJson());
  }

  @override
  Future<void> load() async {}
}
