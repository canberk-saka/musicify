import 'package:json_annotation/json_annotation.dart';
import 'package:musicify/data/interfaces/jsonable_interface.dart';
import 'package:musicify/data/models/cursor.dart';
import 'package:musicify/data/models/followed_artist_item.dart';

part 'generated/followed_artists_info.g.dart';

///{@template followed_artist_info}
///Takip edilen sanatçılar listesini tutar
///{@endtemplate}
@JsonSerializable()
class FollowedArtistInfo implements JsonableInterface<FollowedArtistInfo> {
  ///{@macro followed_artist_info}
  FollowedArtistInfo({
    this.href,
    this.limit,
    this.next,
    this.cursors,
    this.total,
    this.items,
  });

  ///Json'u followedArtistInfo nesnesine çevirir
  factory FollowedArtistInfo.fromJson(Map<String, dynamic> json) => _$FollowedArtistInfoFromJson(json);

  ///Sanatçılar için link
  @JsonKey(name: 'href')
  String? href;

  ///Sanatçı limiti
  @JsonKey(name: 'limit')
  int? limit;

  ///Sanatçılar için sonraki link
  @JsonKey(name: 'next')
  dynamic next;

  ///Sanatçılar için cursor
  @JsonKey(name: 'cursors')
  Cursors? cursors;

  ///Toplam sanatçı sayısı
  @JsonKey(name: 'total')
  int? total;

  ///Sanatçılar listesi
  @JsonKey(name: 'items')
  List<FollowedArtistItem>? items;

  @override
  Map<String, dynamic> toJson() => _$FollowedArtistInfoToJson(this);

  @override
  FollowedArtistInfo fromJson(Map<String, dynamic> json) => FollowedArtistInfo.fromJson(json);
}
