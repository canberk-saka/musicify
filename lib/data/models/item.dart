import 'package:json_annotation/json_annotation.dart';
import 'package:musicify/data/interfaces/jsonable_interface.dart';
import 'package:musicify/data/models/album.dart';
import 'package:musicify/data/models/artist.dart';
import 'package:musicify/data/models/external_id.dart';
import 'package:musicify/data/models/external_urls.dart';
import 'package:musicify/data/models/restrictions.dart';

part 'generated/item.g.dart';

@JsonSerializable(createFactory: true)

///{@template item}
///Item bilgilerini tutar
///{@endtemplate}
class Item implements JsonableInterface<Item> {
  ///{@macro item}
  Item({
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
    this.isPlayable,
    this.name,
    this.popularity,
    this.previewUrl,
    this.trackNumber,
    this.type,
    this.uri,
    this.isLocal,
    this.restrictions,
  });

  ///Json'u item nesnesine çevirir
  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);

  ///Albüm bilgileri
  @JsonKey(name: 'album')
  Album? album;

  ///Sanatçı bilgileri
  @JsonKey(name: 'artists')
  List<Artist>? artists;

  ///Müziğin bulunduğu ülkeler
  @JsonKey(name: 'available_markets')
  List<String>? availableMarkets;

  ///Disk numarası
  @JsonKey(name: 'disc_number')
  int? discNumber;

  ///Müziğin süresi
  @JsonKey(name: 'duration_ms')
  int? durationMs;

  ///Müziğin explicit olup olmadığı
  @JsonKey(name: 'explicit')
  bool? explicit;

  ///Müziğin dış id'leri
  @JsonKey(name: 'external_ids')
  ExternalIds? externalIds;

  ///Müziğin linkleri
  @JsonKey(name: 'external_urls')
  ExternalUrls? externalUrls;

  ///Müziğin linki
  @JsonKey(name: 'href')
  String? href;

  ///Müziğin id'si
  @JsonKey(name: 'id')
  String? id;

  ///Müziğin çalınıp çalınamadığı
  @JsonKey(name: 'is_playable')
  bool? isPlayable;

  ///Müziğin adı
  @JsonKey(name: 'name')
  String? name;

  ///Müziğin popülerliği
  @JsonKey(name: 'popularity')
  int? popularity;

  ///Müziğin önizleme linki
  @JsonKey(name: 'preview_url')

  ///Müziğin önizleme linki
  dynamic previewUrl;

  ///Müziğin track numarası
  @JsonKey(name: 'track_number')
  int? trackNumber;

  ///Müzik tipi
  @JsonKey(name: 'type')
  String? type;

  ///Müzik uri'si
  @JsonKey(name: 'uri')

  ///Müzik uri'si
  String? uri;

  ///Müziğin yerel olup olmadığı
  @JsonKey(name: 'is_local')
  bool? isLocal;

  ///Müziğin kısıtlamaları
  @JsonKey(name: 'restrictions')
  Restrictions? restrictions;

  @override
  Map<String, dynamic> toJson() => _$ItemToJson(this);

  @override
  Item fromJson(Map<String, dynamic> json) => Item.fromJson(json);
}
