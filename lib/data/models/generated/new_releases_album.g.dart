// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../new_releases_album.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewReleasesAlbum _$NewReleasesAlbumFromJson(Map<String, dynamic> json) =>
    NewReleasesAlbum(
      albums: json['albums'] == null
          ? null
          : NewReleasesAlbumsInfo.fromJson(
              json['albums'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NewReleasesAlbumToJson(NewReleasesAlbum instance) =>
    <String, dynamic>{
      if (instance.albums?.toJson() case final value?) 'albums': value,
    };
