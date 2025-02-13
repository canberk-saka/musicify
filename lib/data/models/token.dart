import 'package:json_annotation/json_annotation.dart';
import 'package:musicify/data/interfaces/jsonable_interface.dart';

part 'generated/token.g.dart';

///{@template token}
///Token bilgileri
///{@endtemplate}
@JsonSerializable(createFactory: true)
class Token implements JsonableInterface<Token> {
  ///{@macro token}
  Token({
    this.accessToken,
    this.tokenType,
    this.expiresIn,
    this.refreshToken,
    this.scope,
  });

  ///Json'u token nesnesine çevirir
  factory Token.fromJson(Map<String, dynamic> json) => _$TokenFromJson(json);

  ///Access Token'ı tutar
  @JsonKey(name: 'access_token')
  String? accessToken;

  ///Token tipini tutar
  @JsonKey(name: 'token_type')
  String? tokenType;

  ///Token'ın geçerlilik süresini tutar
  @JsonKey(name: 'expires_in')
  int? expiresIn;

  ///Refresh Token'ı tutar
  @JsonKey(name: 'refresh_token')
  String? refreshToken;

  ///Token'ın kapsamını tutar
  @JsonKey(name: 'scope')
  String? scope;

  @override
  Map<String, dynamic> toJson() => _$TokenToJson(this);

  @override
  Token fromJson(Map<String, dynamic> json) => _$TokenFromJson(json);
}
