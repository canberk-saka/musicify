// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../followed_artist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Artist _$ArtistFromJson(Map<String, dynamic> json) => Artist(
      artists: json['artists'] == null
          ? null
          : FollowedArtistInfo.fromJson(
              json['artists'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ArtistToJson(Artist instance) => <String, dynamic>{
      if (instance.artists?.toJson() case final value?) 'artists': value,
    };
