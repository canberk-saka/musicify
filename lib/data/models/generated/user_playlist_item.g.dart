// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../user_playlist_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserPlaylistItem _$UserPlaylistItemFromJson(Map<String, dynamic> json) =>
    UserPlaylistItem(
      collaborative: json['collaborative'] as bool?,
      description: json['description'] as String?,
      externalUrls: json['external_urls'] == null
          ? null
          : OwnerExternalUrls.fromJson(
              json['external_urls'] as Map<String, dynamic>),
      href: json['href'] as String?,
      id: json['id'] as String?,
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => ImageElements.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String?,
      owner: json['owner'] == null
          ? null
          : Owner.fromJson(json['owner'] as Map<String, dynamic>),
      primaryColor: json['primary_color'],
      public: json['public'] as bool?,
      snapshotId: json['snapshot_id'] as String?,
      tracks: json['tracks'] == null
          ? null
          : UserPlaylistTracks.fromJson(json['tracks'] as Map<String, dynamic>),
      type: json['type'] as String?,
      uri: json['uri'] as String?,
    );

Map<String, dynamic> _$UserPlaylistItemToJson(UserPlaylistItem instance) =>
    <String, dynamic>{
      if (instance.collaborative case final value?) 'collaborative': value,
      if (instance.description case final value?) 'description': value,
      if (instance.externalUrls?.toJson() case final value?)
        'external_urls': value,
      if (instance.href case final value?) 'href': value,
      if (instance.id case final value?) 'id': value,
      if (instance.images?.map((e) => e.toJson()).toList() case final value?)
        'images': value,
      if (instance.name case final value?) 'name': value,
      if (instance.owner?.toJson() case final value?) 'owner': value,
      if (instance.primaryColor case final value?) 'primary_color': value,
      if (instance.public case final value?) 'public': value,
      if (instance.snapshotId case final value?) 'snapshot_id': value,
      if (instance.tracks?.toJson() case final value?) 'tracks': value,
      if (instance.type case final value?) 'type': value,
      if (instance.uri case final value?) 'uri': value,
    };
