///{@template query_param_constants}
///Query parametreleri sabitleri
///{@endtemplate}
enum QueryParamConstants {
  ///Şarkılar
  tracks('/tracks'),

  ///Sanatçılar
  artists('/artists'),

  ///Albümler
  albums('/albums'),

  ///Orta dönem
  middleTerm('/medium_term'),

  ///Kısa dönem
  shortTerm('/short_term'),

  ///Uzun dönem
  longTerm('/long_term');

  ///{@macro query_param_constants}
  const QueryParamConstants(this.value);

  ///parametre değerlerini döndürür
  final String value;
}
