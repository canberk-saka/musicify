// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../new_releases_artist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewReleasesArtist _$NewReleasesArtistFromJson(Map<String, dynamic> json) =>
    NewReleasesArtist(
      externalUrls: json['external_urls'] == null
          ? null
          : ExternalUrls.fromJson(
              json['external_urls'] as Map<String, dynamic>),
      href: json['href'] as String?,
      id: json['id'] as String?,
      name: json['name'] as String?,
      type: json['type'] as String?,
      uri: json['uri'] as String?,
    );

Map<String, dynamic> _$NewReleasesArtistToJson(NewReleasesArtist instance) =>
    <String, dynamic>{
      if (instance.externalUrls?.toJson() case final value?)
        'external_urls': value,
      if (instance.href case final value?) 'href': value,
      if (instance.id case final value?) 'id': value,
      if (instance.name case final value?) 'name': value,
      if (instance.type case final value?) 'type': value,
      if (instance.uri case final value?) 'uri': value,
    };
