import 'package:musicify/constants/base_url_constants.dart';
import 'package:musicify/constants/controller_constants.dart';
import 'package:musicify/constants/static_variables.dart';
import 'package:musicify/data/datasources/remote/base_api_manager.dart';
import 'package:musicify/data/models/token.dart';
import 'package:musicify/env/env.dart';

///{@template authApiManager}
///Auth Api Manager
///{@endtemplate}
final class AuthApiManager extends BaseApiManager {
  ///{@macro authApiManager}
  AuthApiManager()
      : super(BaseUrlConstants.authApiUrl, ControllerConstants.api);

  ///Auth olma işlemi
  Future<void> getAuth() async {
    final params = <String, dynamic>{
      'grant_type': 'authorization_code',
      'code': StaticVariables.code,
      'redirect_uri': Env.redirectUri,
      'client_id': Env.clientId,
      'code_verifier': StaticVariables.codeVerifier,
    };

    final response =
        await dioPost(ControllerConstants.token.url, Token(), data: params);
    final accessToken = response.accessToken;
    StaticVariables.token = accessToken.toString();
  }

  @override
  Future<void> load() async {}
}
