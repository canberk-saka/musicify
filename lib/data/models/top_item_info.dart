import 'package:json_annotation/json_annotation.dart';
import 'package:musicify/data/interfaces/jsonable_interface.dart';
import 'package:musicify/data/models/external_urls.dart';
import 'package:musicify/data/models/followers.dart';
import 'package:musicify/data/models/image_elements.dart';

part 'generated/top_item_info.g.dart';

@JsonSerializable()

///{@template TopItemInfo}
///TopItemInfo model
///{@endtemplate}
class TopItemInfo implements JsonableInterface<TopItemInfo> {
  ///{@macro TopItemInfo}
  TopItemInfo({
    this.externalUrls,
    this.followers,
    this.genres,
    this.href,
    this.id,
    this.images,
    this.name,
    this.popularity,
    this.type,
    this.uri,
  });

  ///Json'u TopItemInfo nesnesine çevirir
  factory TopItemInfo.fromJson(Map<String, dynamic> json) =>
      _$TopItemInfoFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$TopItemInfoToJson(this);

  ///Bağlantıları tutar
  @JsonKey(name: 'external_urls')
  ExternalUrls? externalUrls;

  ///Takipçileri tutar
  @JsonKey(name: 'followers')
  Followers? followers;

  ///Türleri tutar
  @JsonKey(name: 'genres')
  List<String>? genres;

  ///Linki tutar
  @JsonKey(name: 'href')
  String? href;

  ///Id'sini tutar
  @JsonKey(name: 'id')
  String? id;

  ///Resimleri tutar
  @JsonKey(name: 'images')
  List<ImageElements>? images;

  ///Adı tutar
  @JsonKey(name: 'name')
  String? name;

  ///Popülerliği tutar
  @JsonKey(name: 'popularity')
  int? popularity;

  ///Türünü tutar
  @JsonKey(name: 'type')
  String? type;

  ///Uri'sini tutar
  @JsonKey(name: 'uri')
  String? uri;

  @override
  TopItemInfo fromJson(Map<String, dynamic> json) => TopItemInfo.fromJson(json);
}
