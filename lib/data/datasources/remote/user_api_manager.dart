import 'package:musicify/constants/base_url_constants.dart';
import 'package:musicify/constants/controller_constants.dart';
import 'package:musicify/data/datasources/remote/base_api_manager.dart';
import 'package:musicify/data/models/user.dart';

///{@template userApiManager}
///User Api Manager
///{@endtemplate}
final class UserApiManager extends BaseApiManager {
  ///{@macro userApiManager}
  UserApiManager() : super(BaseUrlConstants.spotifyBaseApiUrl, ControllerConstants.me);

  ///Kullanıcı bilgilerini getirme işlemi
  Future<User> getUser() async {
    ///Kullanıcı bilgileri
    final user = await dioGet(BaseUrlConstants.spotifyBaseApiUrl.url, User(), queryParams: {}, pathParams: []);
    return user;
  }

  @override
  Future<void> load() async {}
}
