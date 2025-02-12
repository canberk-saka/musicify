// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../new_releases_albums_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewReleasesAlbumsInfo _$NewReleasesAlbumsInfoFromJson(
        Map<String, dynamic> json) =>
    NewReleasesAlbumsInfo(
      href: json['href'] as String?,
      limit: (json['limit'] as num?)?.toInt(),
      next: json['next'] as String?,
      offset: (json['offset'] as num?)?.toInt(),
      previous: json['previous'] as String?,
      total: (json['total'] as num?)?.toInt(),
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => ItemNewRealeases.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$NewReleasesAlbumsInfoToJson(
        NewReleasesAlbumsInfo instance) =>
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
