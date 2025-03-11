import 'package:json_annotation/json_annotation.dart';
import 'package:musicify/data/interfaces/jsonable_interface.dart';
import 'package:musicify/data/models/track_top_item_info.dart';
import 'package:musicify/dependency_injection/interface/injectable_interface.dart';

part 'generated/track_top_item.g.dart';

@JsonSerializable()

///{@template TrackTopItem}
///TrackTopItem model
///{@endtemplate}
class TrackTopItem implements JsonableInterface<TrackTopItem>, InjectableInterface {
  ///{@macro TrackTopItem}
  TrackTopItem({
    this.items,
    this.total,
    this.limit,
    this.offset,
    this.href,
    this.next,
    this.previous,
  });

  ///Json'u TrackTopItem nesnesine çevirir
  factory TrackTopItem.fromJson(Map<String, dynamic> json) => _$TrackTopItemFromJson(json);

  ///Şarkıları tutar
  @JsonKey(name: 'items')
  List<TrackTopItemInfo>? items;

  ///Toplamı tutar
  @JsonKey(name: 'total')
  int? total;

  ///Limiti tutar
  @JsonKey(name: 'limit')
  int? limit;

  ///Offseti tutar
  @JsonKey(name: 'offset')
  int? offset;

  ///Bağlantıyı tutar
  @JsonKey(name: 'href')
  String? href;

  ///Sonrakini tutar
  @JsonKey(name: 'next')
  String? next;

  ///Öncekini tutar
  @JsonKey(name: 'previous')
  dynamic previous;

  @override
  Map<String, dynamic> toJson() => _$TrackTopItemToJson(this);

  @override
  TrackTopItem fromJson(Map<String, dynamic> json) => TrackTopItem.fromJson(json);

  @override
  Future<void> load() async {}
}
