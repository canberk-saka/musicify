import 'package:json_annotation/json_annotation.dart';
import 'package:musicify/data/interfaces/jsonable_interface.dart';
import 'package:musicify/data/models/followed_artists_info.dart';

part 'generated/followed_artist.g.dart';

///{@template artist}
/// Artist bilgilerini tutar
///   {@endtemplate}
@JsonSerializable()
class Artist implements JsonableInterface<Artist> {
  ///{@macro artist}
  Artist({
    this.artists,
  });

  ///Json'u artist nesnesine çevirir
  factory Artist.fromJson(Map<String, dynamic> json) => _$ArtistFromJson(json);

  ///Sanatçı bilgileri
  @JsonKey(name: 'artists')
  FollowedArtistInfo? artists;

  @override
  Map<String, dynamic> toJson() => _$ArtistToJson(this);

  @override
  Artist fromJson(Map<String, dynamic> json) => Artist.fromJson(json);
}
