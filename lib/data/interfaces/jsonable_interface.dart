/// JsonableInterface<T> isimli generic interface oluşturuldu.
abstract interface class JsonableInterface<T> {
  /// Json'a dönüştürme metodu
  Map<String, dynamic> toJson();

  /// Json'dan dönüştürme metodu
  T fromJson(Map<String, dynamic> json);
}
