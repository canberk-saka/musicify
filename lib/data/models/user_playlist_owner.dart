import 'package:json_annotation/json_annotation.dart';
import 'package:musicify/data/interfaces/jsonable_interface.dart';
import 'package:musicify/data/models/owner_external_urls.dart';

part 'generated/user_playlist_owner.g.dart';

///{@template owner}
///Owner model
///{@endtemplate}

@JsonSerializable(createFactory: true)
class Owner implements JsonableInterface<Owner> {
  ///{@macro owner}
  Owner({
    this.displayName,
    this.externalUrls,
    this.href,
    this.id,
    this.type,
    this.uri,
  });

  ///Json'u Owner nesnesine çevirir
  factory Owner.fromJson(Map<String, dynamic> json) => _$OwnerFromJson(json);

  ///Görünen ismi tutar
  @JsonKey(name: 'display_name')
  String? displayName;

  ///Dış bağlantıları tutar
  @JsonKey(name: 'external_urls')
  OwnerExternalUrls? externalUrls;

  ///Linki tutar
  @JsonKey(name: 'href')
  String? href;

  ///Id'yi tutar
  @JsonKey(name: 'id')
  String? id;

  ///Tipi tutar
  @JsonKey(name: 'type')
  String? type;

  ///Uri'yi tutar
  @JsonKey(name: 'uri')
  String? uri;

  @override
  Map<String, dynamic> toJson() => _$OwnerToJson(this);

  @override
  Owner fromJson(Map<String, dynamic> json) => Owner.fromJson(json);
}
