// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Item _$ItemFromJson(Map<String, dynamic> json) => Item(
      album: json['album'] == null
          ? null
          : Album.fromJson(json['album'] as Map<String, dynamic>),
      artists: (json['artists'] as List<dynamic>?)
          ?.map((e) => Artist.fromJson(e as Map<String, dynamic>))
          .toList(),
      availableMarkets: (json['available_markets'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      discNumber: (json['disc_number'] as num?)?.toInt(),
      durationMs: (json['duration_ms'] as num?)?.toInt(),
      explicit: json['explicit'] as bool?,
      externalIds: json['external_ids'] == null
          ? null
          : ExternalIds.fromJson(json['external_ids'] as Map<String, dynamic>),
      externalUrls: json['external_urls'] == null
          ? null
          : ExternalUrls.fromJson(
              json['external_urls'] as Map<String, dynamic>),
      href: json['href'] as String?,
      id: json['id'] as String?,
      isPlayable: json['is_playable'] as bool?,
      name: json['name'] as String?,
      popularity: (json['popularity'] as num?)?.toInt(),
      previewUrl: json['preview_url'],
      trackNumber: (json['track_number'] as num?)?.toInt(),
      type: json['type'] as String?,
      uri: json['uri'] as String?,
      isLocal: json['is_local'] as bool?,
      restrictions: json['restrictions'] == null
          ? null
          : Restrictions.fromJson(json['restrictions'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ItemToJson(Item instance) => <String, dynamic>{
      if (instance.album?.toJson() case final value?) 'album': value,
      if (instance.artists?.map((e) => e.toJson()).toList() case final value?)
        'artists': value,
      if (instance.availableMarkets case final value?)
        'available_markets': value,
      if (instance.discNumber case final value?) 'disc_number': value,
      if (instance.durationMs case final value?) 'duration_ms': value,
      if (instance.explicit case final value?) 'explicit': value,
      if (instance.externalIds?.toJson() case final value?)
        'external_ids': value,
      if (instance.externalUrls?.toJson() case final value?)
        'external_urls': value,
      if (instance.href case final value?) 'href': value,
      if (instance.id case final value?) 'id': value,
      if (instance.isPlayable case final value?) 'is_playable': value,
      if (instance.name case final value?) 'name': value,
      if (instance.popularity case final value?) 'popularity': value,
      if (instance.previewUrl case final value?) 'preview_url': value,
      if (instance.trackNumber case final value?) 'track_number': value,
      if (instance.type case final value?) 'type': value,
      if (instance.uri case final value?) 'uri': value,
      if (instance.isLocal case final value?) 'is_local': value,
      if (instance.restrictions?.toJson() case final value?)
        'restrictions': value,
    };
