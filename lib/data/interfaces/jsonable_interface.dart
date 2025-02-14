import 'package:musicify_widgets/musicify_widgets.dart';

/// JsonableInterface<T> isimli generic interface oluşturuldu.
abstract interface class JsonableInterface<T extends MusicifyJsonableInterface<T>> implements MusicifyJsonableInterface<T> {
  /// Json'a dönüştürme metodu
  @override
  Map<String, dynamic> toJson();

  /// Json'dan dönüştürme metodu
  @override
  T fromJson(Map<String, dynamic> json);
}
