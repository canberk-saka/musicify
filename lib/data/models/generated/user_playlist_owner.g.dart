// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../user_playlist_owner.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Owner _$OwnerFromJson(Map<String, dynamic> json) => Owner(
      displayName: json['display_name'] as String?,
      externalUrls: json['external_urls'] == null
          ? null
          : OwnerExternalUrls.fromJson(
              json['external_urls'] as Map<String, dynamic>),
      href: json['href'] as String?,
      id: json['id'] as String?,
      type: json['type'] as String?,
      uri: json['uri'] as String?,
    );

Map<String, dynamic> _$OwnerToJson(Owner instance) => <String, dynamic>{
      if (instance.displayName case final value?) 'display_name': value,
      if (instance.externalUrls?.toJson() case final value?)
        'external_urls': value,
      if (instance.href case final value?) 'href': value,
      if (instance.id case final value?) 'id': value,
      if (instance.type case final value?) 'type': value,
      if (instance.uri case final value?) 'uri': value,
    };
