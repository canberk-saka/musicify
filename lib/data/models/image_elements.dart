import 'package:json_annotation/json_annotation.dart';
import 'package:musicify/data/interfaces/jsonable_interface.dart';

part 'generated/image_elements.g.dart';

///{@template imageElement}
///Kullanıcıların image element bilgilerini tutar
///{@endtemplate}
@JsonSerializable(createFactory: true)
class ImageElements implements JsonableInterface<ImageElements> {
  ///{@macro imageElement}
  ImageElements({
    this.url,
    this.height,
    this.width,
  });

  ///Json'dan ImageElement nesnesi oluşturur
  factory ImageElements.fromJson(Map<String, dynamic> json) => _$ImageElementsFromJson(json);

  ///Image url'si
  @JsonKey(name: 'url')
  String? url;

  ///Image yüksekliği
  @JsonKey(name: 'height')
  int? height;

  ///Image genişliği
  @JsonKey(name: 'width')
  int? width;
  @override

  ///ImageElement nesnesini Json'a dönüştürür
  Map<String, dynamic> toJson() => _$ImageElementsToJson(this);
  @override

  ///ImageElement nesnesini Json'dan oluşturur
  ImageElements fromJson(Map<String, dynamic> json) => _$ImageElementsFromJson(json);
}
