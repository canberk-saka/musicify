import 'package:json_annotation/json_annotation.dart';

part 'generated/restrictions.g.dart';

///{@template restrictions}
///Restrictions bilgilerini tutar
///{@endtemplate}
@JsonSerializable(createFactory: true)
class Restrictions {
  ///{@macro restrictions}
  Restrictions({
    this.reason,
  });

  ///Json'dan Restrictions nesnesi oluşturur
  factory Restrictions.fromJson(Map<String, dynamic> json) => _$RestrictionsFromJson(json);
  @JsonKey(name: 'reason')

  ///Restrictions sebebi
  String? reason;

  ///Restrictions nesnesini Json'a dönüştürür
  Map<String, dynamic> toJson() => _$RestrictionsToJson(this);
}
