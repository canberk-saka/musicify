import 'package:json_annotation/json_annotation.dart';
import 'package:musicify/data/interfaces/jsonable_interface.dart';
import 'package:musicify/data/models/top_item_info.dart';

part 'generated/user_top_item.g.dart';

@JsonSerializable()

///{@template UserTopItem}
///UserTopItem model
///{@endtemplate}
class UserTopItem implements JsonableInterface<UserTopItem> {
  ///{@macro UserTopItem}
  UserTopItem({
    this.href,
    this.limit,
    this.next,
    this.offset,
    this.previous,
    this.total,
    this.items,
  });

  ///Json'u UserTopItem nesnesine çevirir
  factory UserTopItem.fromJson(Map<String, dynamic> json) =>
      _$UserTopItemFromJson(json);

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
  dynamic previous;

  ///Toplam şarkı sayısını tutar
  @JsonKey(name: 'total')
  int? total;

  ///Şarkıları tutar
  @JsonKey(name: 'items')
  List<TopItemInfo>? items;

  @override
  Map<String, dynamic> toJson() => _$UserTopItemToJson(this);

  @override
  UserTopItem fromJson(Map<String, dynamic> json) => UserTopItem.fromJson(json);
}
