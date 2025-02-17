import 'package:json_annotation/json_annotation.dart';
import 'package:musicify/data/interfaces/jsonable_interface.dart';

part 'generated/cursor.g.dart';

///{@template cursor}
///Cursor bilgilerini tutar
///{@endtemplate}
@JsonSerializable()
class Cursors implements JsonableInterface<Cursors> {
  ///{@macro cursor}
  Cursors({
    this.after,
  });

  ///Json'u cursor nesnesine çevirir
  factory Cursors.fromJson(Map<String, dynamic> json) => _$CursorsFromJson(json);

  ///Cursor sonrasındaki değeri tutar
  @JsonKey(name: 'after')
  String? after;

  @override
  Map<String, dynamic> toJson() => _$CursorsToJson(this);

  @override
  Cursors fromJson(Map<String, dynamic> json) => Cursors.fromJson(json);
}
