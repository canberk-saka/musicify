// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../album.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewReleasesAlbum _$NewReleasesAlbumFromJson(Map<String, dynamic> json) =>
    NewReleasesAlbum(
      albumType: json['album_type'] as String?,
      totalTracks: (json['total_tracks'] as num?)?.toInt(),
      availableMarkets: (json['available_markets'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      externalUrls: json['external_urls'] == null
          ? null
          : ExternalUrls.fromJson(
              json['external_urls'] as Map<String, dynamic>),
      href: json['href'] as String?,
      id: json['id'] as String?,
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => ImageElements.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String?,
      releaseDate: json['release_date'] == null
          ? null
          : DateTime.parse(json['release_date'] as String),
      releaseDatePrecision: json['release_date_precision'] as String?,
      type: json['type'] as String?,
      uri: json['uri'] as String?,
      artists: (json['artists'] as List<dynamic>?)
          ?.map((e) => NewReleasesArtist.fromJson(e as Map<String, dynamic>))
          .toList(),
      isPlayable: json['is_playable'] as bool?,
    );

Map<String, dynamic> _$NewReleasesAlbumToJson(NewReleasesAlbum instance) =>
    <String, dynamic>{
      if (instance.albumType case final value?) 'album_type': value,
      if (instance.totalTracks case final value?) 'total_tracks': value,
      if (instance.availableMarkets case final value?)
        'available_markets': value,
      if (instance.externalUrls?.toJson() case final value?)
        'external_urls': value,
      if (instance.href case final value?) 'href': value,
      if (instance.id case final value?) 'id': value,
      if (instance.images?.map((e) => e.toJson()).toList() case final value?)
        'images': value,
      if (instance.name case final value?) 'name': value,
      if (instance.releaseDate?.toIso8601String() case final value?)
        'release_date': value,
      if (instance.releaseDatePrecision case final value?)
        'release_date_precision': value,
      if (instance.type case final value?) 'type': value,
      if (instance.uri case final value?) 'uri': value,
      if (instance.artists?.map((e) => e.toJson()).toList() case final value?)
        'artists': value,
      if (instance.isPlayable case final value?) 'is_playable': value,
    };
