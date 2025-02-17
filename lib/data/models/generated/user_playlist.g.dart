// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../user_playlist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserPlaylists _$UserPlaylistsFromJson(Map<String, dynamic> json) =>
    UserPlaylists(
      href: json['href'] as String?,
      limit: (json['limit'] as num?)?.toInt(),
      next: json['next'],
      offset: (json['offset'] as num?)?.toInt(),
      previous: json['previous'],
      total: (json['total'] as num?)?.toInt(),
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => UserPlaylistItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UserPlaylistsToJson(UserPlaylists instance) =>
    <String, dynamic>{
      if (instance.href case final value?) 'href': value,
      if (instance.limit case final value?) 'limit': value,
      if (instance.next case final value?) 'next': value,
      if (instance.offset case final value?) 'offset': value,
      if (instance.previous case final value?) 'previous': value,
      if (instance.total case final value?) 'total': value,
      if (instance.items?.map((e) => e.toJson()).toList() case final value?)
        'items': value,
    };
