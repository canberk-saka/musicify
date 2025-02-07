import 'package:json_annotation/json_annotation.dart';
import 'package:musicify/data/interfaces/jsonable_interface.dart';

part 'generated/explicit_content.g.dart';

///{@template explicitContent}
///Kullanıcının içeriğini filtreleme bilgileri
///{@endtemplate}
@JsonSerializable()
class ExplicitContent implements JsonableInterface<ExplicitContent> {
  ///{@macro explicitContent}
  ExplicitContent({
    this.filterEnabled,
    this.filterLocked,
  });

  factory ExplicitContent.fromJson(Map<String, dynamic> json) => _$ExplicitContentFromJson(json);

  ///Filtreleme durumunu tutar
  bool? filterEnabled;

  ///Filtreleme kilidini tutar
  bool? filterLocked;

  @override
  Map<String, dynamic> toJson() => _$ExplicitContentToJson(this);

  @override
  ExplicitContent fromJson(Map<String, dynamic> json) => _$ExplicitContentFromJson(json);
}
