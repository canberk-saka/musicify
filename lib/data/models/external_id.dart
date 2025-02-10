import 'package:json_annotation/json_annotation.dart';

part 'generated/external_id.g.dart';

///{@template externalIds}
///External Id bilgilerini tutar
///{@endtemplate}
@JsonSerializable(createFactory: true)
class ExternalIds {
  ///{@macro externalIds}
  ExternalIds({
    this.isrc,
  });

  ///Json'dan ExternalIds nesnesi oluşturur
  factory ExternalIds.fromJson(Map<String, dynamic> json) => _$ExternalIdsFromJson(json);
  @JsonKey(name: 'isrc')

  ///International Standard Recording Code
  String? isrc;

  ///ExternalIds nesnesini Json'a dönüştürür
  Map<String, dynamic> toJson() => _$ExternalIdsToJson(this);
}
