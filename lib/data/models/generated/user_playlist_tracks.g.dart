// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../user_playlist_tracks.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserPlaylistTracks _$UserPlaylistTracksFromJson(Map<String, dynamic> json) =>
    UserPlaylistTracks(
      href: json['href'] as String?,
      total: (json['total'] as num?)?.toInt(),
    );

Map<String, dynamic> _$UserPlaylistTracksToJson(UserPlaylistTracks instance) =>
    <String, dynamic>{
      if (instance.href case final value?) 'href': value,
      if (instance.total case final value?) 'total': value,
    };
