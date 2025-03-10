import 'package:json_annotation/json_annotation.dart';
import 'package:musicify/data/interfaces/jsonable_interface.dart';
import 'package:musicify/data/models/album.dart';
import 'package:musicify/data/models/external_id.dart';
import 'package:musicify/data/models/external_urls.dart';
import 'package:musicify/data/models/new_releases_artist.dart';

part 'generated/track_top_item_info.g.dart';

@JsonSerializable()

///{@template TrackTopItemInfo}
///TrackTopItemInfo model
///{@endtemplate}
class TrackTopItemInfo implements JsonableInterface<TrackTopItemInfo> {
  ///{@macro TrackTopItemInfo}
  TrackTopItemInfo({
    this.album,
    this.artists,
    this.availableMarkets,
    this.discNumber,
    this.durationMs,
    this.explicit,
    this.externalIds,
    this.externalUrls,
    this.href,
    this.id,
    this.isLocal,
    this.isPlayable,
    this.name,
    this.popularity,
    this.previewUrl,
    this.trackNumber,
    this.type,
    this.uri,
  });

  ///Json'u TrackTopItemInfo nesnesine çevirir
  factory TrackTopItemInfo.fromJson(Map<String, dynamic> json) => _$TrackTopItemInfoFromJson(json);

  ///Albümü tutar
  @JsonKey(name: 'album')
  NewReleasesAlbum? album;

  ///Sanatçıları tutar
  @JsonKey(name: 'artists')
  List<NewReleasesArtist>? artists;

  ///Hangi ülkede olduklarını tutar
  @JsonKey(name: 'available_markets')
  List<String>? availableMarkets;

  ///Disk numarasını tutar
  @JsonKey(name: 'disc_number')
  int? discNumber;

  ///Şarkının süresini tutar
  @JsonKey(name: 'duration_ms')
  int? durationMs;

  ///Şarkının explicit olup olmadığını tutar
  @JsonKey(name: 'explicit')
  bool? explicit;

  ///Dış id'leri tutar
  @JsonKey(name: 'external_ids')
  ExternalIds? externalIds;

  ///Dış linkleri tutar
  @JsonKey(name: 'external_urls')
  ExternalUrls? externalUrls;

  ///Linki tutar
  @JsonKey(name: 'href')
  String? href;

  ///Id'sini tutar
  @JsonKey(name: 'id')
  String? id;

  ///Yerel olup olmadığını tutar
  @JsonKey(name: 'is_local')
  bool? isLocal;

  ///Oynanabilir olup olmadığını tutar
  @JsonKey(name: 'is_playable')
  bool? isPlayable;

  ///Adı tutar
  @JsonKey(name: 'name')
  String? name;

  ///Popülerliği tutar
  @JsonKey(name: 'popularity')
  int? popularity;

  ///Önizleme linkini tutar
  @JsonKey(name: 'preview_url')
  dynamic previewUrl;

  ///Şarkı numarasını tutar
  @JsonKey(name: 'track_number')
  int? trackNumber;

  ///Türünü tutar
  @JsonKey(name: 'type')
  String? type;

  ///Uri'sini tutar
  @JsonKey(name: 'uri')
  String? uri;

  @override
  Map<String, dynamic> toJson() => _$TrackTopItemInfoToJson(this);

  @override
  TrackTopItemInfo fromJson(Map<String, dynamic> json) => TrackTopItemInfo.fromJson(json);
}
