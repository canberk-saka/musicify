import 'package:json_annotation/json_annotation.dart';
import 'package:musicify/data/interfaces/jsonable_interface.dart';
import 'package:musicify/data/models/image_elements.dart';
import 'package:musicify/data/models/owner_external_urls.dart';
import 'package:musicify/data/models/user_playlist_owner.dart';
import 'package:musicify/data/models/user_playlist_tracks.dart';

part 'generated/user_playlist_item.g.dart';

///{@template user_playlist_item}
///UserPlaylistItem model
///{@endtemplate}
@JsonSerializable(createFactory: true)
class UserPlaylistItem implements JsonableInterface<UserPlaylistItem> {
  ///{@macro user_playlist_item}
  UserPlaylistItem({
    this.collaborative,
    this.description,
    this.externalUrls,
    this.href,
    this.id,
    this.images,
    this.name,
    this.owner,
    this.primaryColor,
    this.public,
    this.snapshotId,
    this.tracks,
    this.type,
    this.uri,
  });

  ///Json'u UserPlaylistItem nesnesine çevirir
  factory UserPlaylistItem.fromJson(Map<String, dynamic> json) => _$UserPlaylistItemFromJson(json);

  ///Kullanıcılar arası işbirliği yapılıp yapılmadığını tutar
  @JsonKey(name: 'collaborative')
  bool? collaborative;

  ///Açıklamayı tutar
  @JsonKey(name: 'description')
  String? description;

  ///Dış bağlantıları tutar
  @JsonKey(name: 'external_urls')
  OwnerExternalUrls? externalUrls;

  ///Linki tutar
  @JsonKey(name: 'href')
  String? href;

  ///Id'yi tutar
  @JsonKey(name: 'id')
  String? id;
  @JsonKey(name: 'images')

  ///Resimleri tutar
  List<ImageElements>? images;

  ///İsmi tutar
  @JsonKey(name: 'name')
  String? name;

  ///Sahibi tutar
  @JsonKey(name: 'owner')
  Owner? owner;

  ///Başlık rengini tutar
  @JsonKey(name: 'primary_color')
  dynamic primaryColor;

  ///Herkesin görebilmesini tutar
  @JsonKey(name: 'public')
  bool? public;

  ///Anlık id'yi tutar
  @JsonKey(name: 'snapshot_id')
  String? snapshotId;

  ///Şarkıları tutar
  @JsonKey(name: 'tracks')
  UserPlaylistTracks? tracks;
  @JsonKey(name: 'type')

  ///Türü tutar
  String? type;

  ///Uri'yi tutar
  @JsonKey(name: 'uri')
  String? uri;

  @override
  Map<String, dynamic> toJson() => _$UserPlaylistItemToJson(this);

  @override
  UserPlaylistItem fromJson(Map<String, dynamic> json) => UserPlaylistItem.fromJson(json);
}
