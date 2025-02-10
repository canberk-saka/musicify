import 'package:json_annotation/json_annotation.dart';
import 'package:musicify/data/interfaces/jsonable_interface.dart';
import 'package:musicify/data/models/external_urls.dart';

part 'generated/artist.g.dart';

///{@template artist}
/// Artist bilgilerini tutar
/// {@endtemplate}
@JsonSerializable(createFactory: true)
class Artist implements JsonableInterface<Artist> {
  ///{@macro artist}
  Artist({
    this.externalUrls,
    this.href,
    this.id,
    this.name,
    this.type,
    this.uri,
  });

  factory Artist.fromJson(Map<String, dynamic> json) => _$ArtistFromJson(json);

  ///Artist için linkler
  @JsonKey(name: 'external_urls')
  ExternalUrls? externalUrls;

  ///Artist detay sayfası linki
  @JsonKey(name: 'href')
  String? href;

  ///Artist id'si
  @JsonKey(name: 'id')
  String? id;

  ///Artist adı
  @JsonKey(name: 'name')
  String? name;

  ///Artist tipi
  @JsonKey(name: 'type')
  String? type;

  ///Artist uri'si
  @JsonKey(name: 'uri')
  String? uri;

  @override
  Map<String, dynamic> toJson() => _$ArtistToJson(this);

  @override
  Artist fromJson(Map<String, dynamic> json) => Artist.fromJson(json);
}
