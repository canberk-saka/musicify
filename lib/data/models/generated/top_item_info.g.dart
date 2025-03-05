// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../top_item_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TopItemInfo _$TopItemInfoFromJson(Map<String, dynamic> json) => TopItemInfo(
      externalUrls: json['external_urls'] == null
          ? null
          : ExternalUrls.fromJson(
              json['external_urls'] as Map<String, dynamic>),
      followers: json['followers'] == null
          ? null
          : Followers.fromJson(json['followers'] as Map<String, dynamic>),
      genres:
          (json['genres'] as List<dynamic>?)?.map((e) => e as String).toList(),
      href: json['href'] as String?,
      id: json['id'] as String?,
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => ImageElements.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String?,
      popularity: (json['popularity'] as num?)?.toInt(),
      type: json['type'] as String?,
      uri: json['uri'] as String?,
    );

Map<String, dynamic> _$TopItemInfoToJson(TopItemInfo instance) =>
    <String, dynamic>{
      if (instance.externalUrls?.toJson() case final value?)
        'external_urls': value,
      if (instance.followers?.toJson() case final value?) 'followers': value,
      if (instance.genres case final value?) 'genres': value,
      if (instance.href case final value?) 'href': value,
      if (instance.id case final value?) 'id': value,
      if (instance.images?.map((e) => e.toJson()).toList() case final value?)
        'images': value,
      if (instance.name case final value?) 'name': value,
      if (instance.popularity case final value?) 'popularity': value,
      if (instance.type case final value?) 'type': value,
      if (instance.uri case final value?) 'uri': value,
    };
