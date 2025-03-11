import 'package:json_annotation/json_annotation.dart';
import 'package:musicify/data/interfaces/jsonable_interface.dart';
import 'package:musicify/data/models/external_urls.dart';
import 'package:musicify/data/models/image_elements.dart';
import 'package:musicify/data/models/new_releases_artist.dart';

part 'generated/album.g.dart';

@JsonSerializable(createFactory: true)

///{@template album}
///Album bilgilerini tutar
///{@endtemplate}
class NewReleasesAlbum implements JsonableInterface<NewReleasesAlbum> {
  ///{@macro album}
  NewReleasesAlbum({
    this.albumType,
    this.totalTracks,
    this.availableMarkets,
    this.externalUrls,
    this.href,
    this.id,
    this.images,
    this.name,
    //this.releaseDate,
    this.releaseDatePrecision,
    this.type,
    this.uri,
    this.artists,
    this.isPlayable,
  });

  ///Json'u albüm nesnesine çevirir
  factory NewReleasesAlbum.fromJson(Map<String, dynamic> json) => _$NewReleasesAlbumFromJson(json);

  ///Albüm tipi
  @JsonKey(name: 'album_type')
  String? albumType;

  ///Albümdeki toplam şarkı sayısı
  @JsonKey(name: 'total_tracks')
  int? totalTracks;

  ///Albümün bulunduğu ülkeler
  @JsonKey(name: 'available_markets')
  List<String>? availableMarkets;

  ///Albüm için linkler
  @JsonKey(name: 'external_urls')
  ExternalUrls? externalUrls;

  ///Albüm detay sayfası linki
  @JsonKey(name: 'href')
  String? href;

  ///Albüm id'si
  @JsonKey(name: 'id')
  String? id;

  ///Albüm resimleri
  @JsonKey(name: 'images')
  List<ImageElements>? images;

  ///Albüm adı
  @JsonKey(name: 'name')
  String? name;

  ///Albümün çıkış tarihi
  //@JsonKey(name: 'release_date')
  //DateTime? releaseDate;

  ///Albümün çıkış tarihi hassasiyeti
  @JsonKey(name: 'release_date_precision')
  String? releaseDatePrecision;

  ///Albüm tipi
  @JsonKey(name: 'type')
  String? type;

  ///Albüm linki
  @JsonKey(name: 'uri')
  String? uri;

  ///Albümdeki sanatçılar
  @JsonKey(name: 'artists')
  List<NewReleasesArtist>? artists;

  ///Albümün oynatılabilir olup olmadığı
  @JsonKey(name: 'is_playable')
  bool? isPlayable;

  @override
  Map<String, dynamic> toJson() => _$NewReleasesAlbumToJson(this);

  @override
  NewReleasesAlbum fromJson(Map<String, dynamic> json) => NewReleasesAlbum.fromJson(json);
}
