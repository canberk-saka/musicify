import 'package:json_annotation/json_annotation.dart';
import 'package:musicify/data/interfaces/jsonable_interface.dart';

part 'generated/user_playlist_request.g.dart';

///{@template userPlaylistRequest}
///Kullanıcı playlist request modeli
///{@endtemplate}
@JsonSerializable()
final class UserPlaylistRequest implements JsonableInterface<UserPlaylistRequest> {
  ///{@macro userPlaylistRequest}
  UserPlaylistRequest({
    this.limit,
    this.offset,
  });

  ///Json'dan nesneye dönüştürme
  factory UserPlaylistRequest.fromJson(Map<String, dynamic> json) => _$UserPlaylistRequestFromJson(json);

  ///Maksimum playlist sayısı
  @JsonKey(name: 'limit')
  String? limit;

  ///Başlangıç indexi
  @JsonKey(name: 'offset')
  String? offset;

  @override
  Map<String, dynamic> toJson() => _$UserPlaylistRequestToJson(this);

  @override
  UserPlaylistRequest fromJson(Map<String, dynamic> json) => UserPlaylistRequest.fromJson(json);
}
