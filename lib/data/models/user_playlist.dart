import 'package:json_annotation/json_annotation.dart';
import 'package:musicify/data/interfaces/jsonable_interface.dart';
import 'package:musicify/data/models/user_playlist_item.dart';

part 'generated/user_playlist.g.dart';

///{@template user_playlists}
///UserPlaylists model
///{@endtemplate}
@JsonSerializable(createFactory: true)
class UserPlaylists implements JsonableInterface<UserPlaylists> {
  ///{@macro user_playlists}
  UserPlaylists({
    this.href,
    this.limit,
    this.next,
    this.offset,
    this.previous,
    this.total,
    this.items,
  });

  ///Json'u UserPlaylists nesnesine çevirir
  factory UserPlaylists.fromJson(Map<String, dynamic> json) => _$UserPlaylistsFromJson(json);

  ///Linki tutar
  @JsonKey(name: 'href')
  String? href;

  ///Kaç şarkı listeleneceğini tutar
  @JsonKey(name: 'limit')
  int? limit;

  ///Sonraki şarkıyı tutar
  @JsonKey(name: 'next')
  dynamic next;

  ///Kaçıncı sıradan başlayacağını tutar
  @JsonKey(name: 'offset')
  int? offset;

  ///Önceki şarkıyı tutar
  @JsonKey(name: 'previous')
  dynamic previous;

  ///Toplam şarkı sayısını tutar
  @JsonKey(name: 'total')
  int? total;

  ///Şarkıları tutar
  @JsonKey(name: 'items')
  List<UserPlaylistItem>? items;

  @override
  Map<String, dynamic> toJson() => _$UserPlaylistsToJson(this);

  @override
  UserPlaylists fromJson(Map<String, dynamic> json) => UserPlaylists.fromJson(json);
}
