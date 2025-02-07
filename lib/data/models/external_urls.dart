import 'package:json_annotation/json_annotation.dart';
import 'package:musicify/data/interfaces/jsonable_interface.dart';

part 'generated/external_urls.g.dart';

///{@template externalUrls}
/// [ExternalUrls] sınıfı
/// Kullanıcıya ait linkler
/// {@endtemplate}
@JsonSerializable(createFactory: true)
class ExternalUrls implements JsonableInterface<ExternalUrls> {
  ///{@macro externalUrls}
  ExternalUrls({
    this.spotify,
  });

  factory ExternalUrls.fromJson(Map<String, dynamic> json) => _$ExternalUrlsFromJson(json);

  ///Spotify linki
  String? spotify;

  @override
  Map<String, dynamic> toJson() => _$ExternalUrlsToJson(this);

  @override
  ExternalUrls fromJson(Map<String, dynamic> json) => _$ExternalUrlsFromJson(json);
}
