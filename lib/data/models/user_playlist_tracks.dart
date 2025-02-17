import 'package:json_annotation/json_annotation.dart';
import 'package:musicify/data/interfaces/jsonable_interface.dart';

part 'generated/user_playlist_tracks.g.dart';

///{@template user_playlist_tracks}
///UserPlaylistTracks model
///{@endtemplate}
@JsonSerializable(createFactory: true)
class UserPlaylistTracks implements JsonableInterface<UserPlaylistTracks> {
  ///{@macro user_playlist_tracks}
  UserPlaylistTracks({
    this.href,
    this.total,
  });

  ///Json'u UserPlaylistTracks nesnesine çevirir
  factory UserPlaylistTracks.fromJson(Map<String, dynamic> json) => _$UserPlaylistTracksFromJson(json);

  ///Linki tutar
  @JsonKey(name: 'href')
  String? href;

  ///Toplam şarkı sayısını tutar
  @JsonKey(name: 'total')
  int? total;

  @override
  Map<String, dynamic> toJson() => _$UserPlaylistTracksToJson(this);

  @override
  UserPlaylistTracks fromJson(Map<String, dynamic> json) => UserPlaylistTracks.fromJson(json);
}
