import 'package:json_annotation/json_annotation.dart';
import 'package:musicify/data/interfaces/jsonable_interface.dart';
import 'package:musicify/data/models/artist.dart';
import 'package:musicify/data/models/external_urls.dart';
import 'package:musicify/data/models/image_elements.dart';
import 'package:musicify/data/models/restrictions.dart';

part 'generated/item_new_realeases.g.dart';

///{@template item_new_realeases}
///NewReleasesAlbumsInfo içerisindeki items listesinin elemanlarını tutar
///{@endtemplate}
@JsonSerializable(createFactory: true)
class ItemNewRealeases implements JsonableInterface<ItemNewRealeases> {
  ///{@macro item_new_realeases}
  ItemNewRealeases({
    this.albumType,
    this.totalTracks,
    this.availableMarkets,
    this.externalUrls,
    this.href,
    this.id,
    this.images,
    this.name,
    this.releaseDate,
    this.releaseDatePrecision,
    this.restrictions,
    this.type,
    this.uri,
    this.artists,
  });

  ///Json'u itemNewRealeases nesnesine çevirir
  factory ItemNewRealeases.fromJson(Map<String, dynamic> json) => _$ItemNewRealeasesFromJson(json);

  ///Album türünü tutar
  @JsonKey(name: 'album_type')
  String? albumType;

  ///Toplam parça sayısını tutar
  @JsonKey(name: 'total_tracks')
  int? totalTracks;

  ///Hangi ülkelerde yayınlandığını tutar
  @JsonKey(name: 'available_markets')
  List<String>? availableMarkets;

  ///Linkleri tutar
  @JsonKey(name: 'external_urls')
  ExternalUrls? externalUrls;

  ///Linki tutar
  @JsonKey(name: 'href')
  String? href;

  ///Albüm id'sini tutar
  @JsonKey(name: 'id')
  String? id;

  ///Resimleri tutar
  @JsonKey(name: 'images')
  List<ImageElements>? images;

  ///İsmini tutar
  @JsonKey(name: 'name')
  String? name;

  ///Yayınlanma tarihini tutar
  @JsonKey(name: 'release_date')
  String? releaseDate;

  ///Yayınlanma tarihininin hassasiyetini tutar
  @JsonKey(name: 'release_date_precision')
  String? releaseDatePrecision;

  ///Kısıtlamaları tutar
  @JsonKey(name: 'restrictions')
  Restrictions? restrictions;

  ///Türünü tutar
  @JsonKey(name: 'type')
  String? type;

  ///Uri'sini tutar
  @JsonKey(name: 'uri')
  String? uri;

  ///Sanatçıları tutar
  @JsonKey(name: 'artists')
  List<Artist>? artists;

  @override
  Map<String, dynamic> toJson() => _$ItemNewRealeasesToJson(this);

  @override
  ItemNewRealeases fromJson(Map<String, dynamic> json) => ItemNewRealeases.fromJson(json);
}
