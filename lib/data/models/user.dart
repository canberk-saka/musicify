import 'package:json_annotation/json_annotation.dart';
import 'package:musicify/data/interfaces/jsonable_interface.dart';
import 'package:musicify/data/models/explicit_content.dart';
import 'package:musicify/data/models/external_urls.dart';
import 'package:musicify/data/models/followers.dart';

part 'generated/user.g.dart';

///{@template user}
///Kullanıcı bilgileri
///{@endtemplate}
@JsonSerializable(createFactory: true)
class User implements JsonableInterface<User> {
  ///{@macro user}
  User({
    this.country,
    this.displayName,
    this.email,
    this.explicitContent,
    this.externalUrls,
    this.followers,
    this.href,
    this.id,
    this.images,
    this.product,
    this.type,
    this.uri,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  ///Kullanıcının ülkesini tutar
  @JsonKey(name: 'country')
  String? country;

  ///Kullanıcının adını tutar
  @JsonKey(name: 'display_name')
  String? displayName;

  ///Kullanıcının email adresini tutar
  @JsonKey(name: 'email')
  String? email;

  ///Kullanıcının explicit content bilgilerini tutar
  @JsonKey(name: 'explicit_content')
  ExplicitContent? explicitContent;

  ///Kullanıcının linklerini tutar
  @JsonKey(name: 'external_urls')
  ExternalUrls? externalUrls;

  ///Kullanıcının takipçi bilgilerini tutar
  @JsonKey(name: 'followers')
  Followers? followers;

  ///Kullanıcının linkini tutar
  @JsonKey(name: 'href')
  String? href;

  ///Kullanıcının id'sini tutar
  @JsonKey(name: 'id')
  String? id;

  ///Kullanıcının resimlerini tutar
  @JsonKey(name: 'images')
  List<dynamic>? images;

  ///Kullanıcının premium olma durmunu tutar
  @JsonKey(name: 'product')
  String? product;

  ///Kullanıcı tipini tutar
  @JsonKey(name: 'type')
  String? type;

  ///Kullanıcının linki
  @JsonKey(name: 'uri')
  String? uri;

  @override
  Map<String, dynamic> toJson() => _$UserToJson(this);

  @override
  User fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
