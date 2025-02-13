import 'package:json_annotation/json_annotation.dart';
import 'package:musicify/data/interfaces/jsonable_interface.dart';
import 'package:musicify/data/models/new_releases_albums_info.dart';

part 'generated/new_releases_album.g.dart';

///{@template new_releases_album}
///NewReleasesAlbum içerisindeki albums listesinin elemanlarını tutar
///{@endtemplate}
@JsonSerializable(createFactory: true)
class NewReleasesAlbum implements JsonableInterface<NewReleasesAlbum> {
  ///{@macro new_releases_album}
  NewReleasesAlbum({
    this.albums,
  });

  ///Json'u newReleasesAlbum nesnesine çevirir
  factory NewReleasesAlbum.fromJson(Map<String, dynamic> json) => _$NewReleasesAlbumFromJson(json);

  ///Albümleri tutar
  @JsonKey(name: 'albums')
  NewReleasesAlbumsInfo? albums;

  @override
  Map<String, dynamic> toJson() => _$NewReleasesAlbumToJson(this);

  @override
  NewReleasesAlbum fromJson(Map<String, dynamic> json) => _$NewReleasesAlbumFromJson(json);
}
