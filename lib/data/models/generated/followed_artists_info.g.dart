// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../followed_artists_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FollowedArtistInfo _$FollowedArtistInfoFromJson(Map<String, dynamic> json) =>
    FollowedArtistInfo(
      href: json['href'] as String?,
      limit: (json['limit'] as num?)?.toInt(),
      next: json['next'],
      cursors: json['cursors'] == null
          ? null
          : Cursors.fromJson(json['cursors'] as Map<String, dynamic>),
      total: (json['total'] as num?)?.toInt(),
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => FollowedArtistItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FollowedArtistInfoToJson(FollowedArtistInfo instance) =>
    <String, dynamic>{
      if (instance.href case final value?) 'href': value,
      if (instance.limit case final value?) 'limit': value,
      if (instance.next case final value?) 'next': value,
      if (instance.cursors?.toJson() case final value?) 'cursors': value,
      if (instance.total case final value?) 'total': value,
      if (instance.items?.map((e) => e.toJson()).toList() case final value?)
        'items': value,
    };
