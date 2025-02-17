import 'package:json_annotation/json_annotation.dart';
import 'package:musicify/data/interfaces/jsonable_interface.dart';
import 'package:musicify/data/models/external_urls.dart';
import 'package:musicify/data/models/followers.dart';
import 'package:musicify/data/models/image_elements.dart';

part 'generated/followed_artist_item.g.dart';

///{@template followed_artist_item}
///Takip edilen sanatçılar listesindeki elemanları tutar
///{@endtemplate}
@JsonSerializable()
class FollowedArtistItem implements JsonableInterface<FollowedArtistItem> {
  ///{@macro followed_artist_item}
  FollowedArtistItem({
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

  ///Json'u followedArtistItem nesnesine çevirir
  factory FollowedArtistItem.fromJson(Map<String, dynamic> json) => _$FollowedArtistItemFromJson(json);

  ///Sanatçı için linkler
  @JsonKey(name: 'external_urls')
  ExternalUrls? externalUrls;

  ///Sanatçı takipçi sayısı
  @JsonKey(name: 'followers')
  Followers? followers;

  ///Sanatçının şarkılarının türleri
  @JsonKey(name: 'genres')
  List<String>? genres;

  ///Sanatçı detay sayfası linki
  @JsonKey(name: 'href')
  String? href;

  ///Sanatçı id'si
  @JsonKey(name: 'id')
  String? id;

  ///Sanatçı resimleri
  @JsonKey(name: 'images')
  List<ImageElements>? images;
  @JsonKey(name: 'name')

  ///Sanatçı adı
  String? name;

  ///Sanatçı popülerliği
  @JsonKey(name: 'popularity')
  int? popularity;

  ///Sanatçı tipi
  @JsonKey(name: 'type')
  String? type;

  ///Sanatçı uri'si
  @JsonKey(name: 'uri')
  String? uri;

  @override
  Map<String, dynamic> toJson() => _$FollowedArtistItemToJson(this);

  @override
  FollowedArtistItem fromJson(Map<String, dynamic> json) => FollowedArtistItem.fromJson(json);
}
