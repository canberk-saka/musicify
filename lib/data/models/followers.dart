import 'package:json_annotation/json_annotation.dart';
import 'package:musicify/data/interfaces/jsonable_interface.dart';

part 'generated/followers.g.dart';

///{@template followers}
///Takipçi bilgileri
///{@endtemplate}
@JsonSerializable(createFactory: true)
class Followers implements JsonableInterface<Followers> {
  ///{@macro followers}
  Followers({
    this.href,
    this.total,
  });

  ///Json'u followers nesnesine çevirir
  factory Followers.fromJson(Map<String, dynamic> json) => _$FollowersFromJson(json);

  /// [href] alanı
  /// Bu alanın tipi [String] olarak belirlendi.
  @JsonKey(name: 'href')
  String? href;

  /// [total] alanı
  /// Bu alanın tipi [int] olarak belirlendi.
  /// Toplam takipçi sayısını tutar.
  @JsonKey(name: 'total')
  int? total;

  @override
  Map<String, dynamic> toJson() => _$FollowersToJson(this);

  @override
  Followers fromJson(Map<String, dynamic> json) => _$FollowersFromJson(json);
}
