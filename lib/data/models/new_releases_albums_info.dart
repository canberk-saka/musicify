import 'package:json_annotation/json_annotation.dart';
import 'package:musicify/data/interfaces/jsonable_interface.dart';
import 'package:musicify/data/models/item_new_realeases.dart';

part 'generated/new_releases_albums_info.g.dart';

///{@template new_releases_albums_info}
///NewReleasesAlbumsInfo içerisindeki albums listesinin elemanlarını tutar
///{@endtemplate}
@JsonSerializable(createFactory: true)
class NewReleasesAlbumsInfo implements JsonableInterface<NewReleasesAlbumsInfo> {
  ///{@macro new_releases_albums_info}
  NewReleasesAlbumsInfo({
    this.href,
    this.limit,
    this.next,
    this.offset,
    this.previous,
    this.total,
    this.items,
  });

  factory NewReleasesAlbumsInfo.fromJson(Map<String, dynamic> json) => _$NewReleasesAlbumsInfoFromJson(json);

  ///Linki tutar
  @JsonKey(name: 'href')
  String? href;

  ///Kaç şarkı listeleneceğini tutar
  @JsonKey(name: 'limit')
  int? limit;

  ///Sonraki şarkıyı tutar
  @JsonKey(name: 'next')
  String? next;

  ///Kaçıncı sıradan başlayacağını tutar
  @JsonKey(name: 'offset')
  int? offset;

  ///Önceki şarkıyı tutar
  @JsonKey(name: 'previous')
  String? previous;

  ///Toplam şarkı sayısını tutar
  @JsonKey(name: 'total')
  int? total;

  ///Şarkıları tutar
  @JsonKey(name: 'items')
  List<ItemNewRealeases>? items;

  @override
  Map<String, dynamic> toJson() => _$NewReleasesAlbumsInfoToJson(this);

  @override
  NewReleasesAlbumsInfo fromJson(Map<String, dynamic> json) => _$NewReleasesAlbumsInfoFromJson(json);
}
