///Musicify Jsonable Interface class'ı
abstract interface class MusicifyJsonableInterface<T extends MusicifyJsonableInterface<T>> {
  /// Json'a dönüştürme metodu
  Map<String, dynamic> toJson();

  /// Json'dan dönüştürme metodu
  T fromJson(Map<String, dynamic> json);
}
