import 'package:json_annotation/json_annotation.dart';
import 'package:musicify/data/interfaces/jsonable_interface.dart';

part 'generated/owner_external_urls.g.dart';

///{@template owner_external_urls}
///OwnerExternalUrls model
///{@endtemplate}
@JsonSerializable(createFactory: true)
class OwnerExternalUrls implements JsonableInterface<OwnerExternalUrls> {
  ///{@macro owner_external_urls}
  OwnerExternalUrls({
    this.spotify,
  });

  ///Json'u OwnerExternalUrls nesnesine çevirir
  factory OwnerExternalUrls.fromJson(Map<String, dynamic> json) => _$OwnerExternalUrlsFromJson(json);
  @JsonKey(name: 'spotify')

  ///Spotify linki
  String? spotify;

  @override
  Map<String, dynamic> toJson() => _$OwnerExternalUrlsToJson(this);

  @override
  OwnerExternalUrls fromJson(Map<String, dynamic> json) => OwnerExternalUrls.fromJson(json);
}
