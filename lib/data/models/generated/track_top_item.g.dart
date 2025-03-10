// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../track_top_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrackTopItem _$TrackTopItemFromJson(Map<String, dynamic> json) => TrackTopItem(
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => TrackTopItemInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: (json['total'] as num?)?.toInt(),
      limit: (json['limit'] as num?)?.toInt(),
      offset: (json['offset'] as num?)?.toInt(),
      href: json['href'] as String?,
      next: json['next'] as String?,
      previous: json['previous'],
    );

Map<String, dynamic> _$TrackTopItemToJson(TrackTopItem instance) =>
    <String, dynamic>{
      if (instance.items?.map((e) => e.toJson()).toList() case final value?)
        'items': value,
      if (instance.total case final value?) 'total': value,
      if (instance.limit case final value?) 'limit': value,
      if (instance.offset case final value?) 'offset': value,
      if (instance.href case final value?) 'href': value,
      if (instance.next case final value?) 'next': value,
      if (instance.previous case final value?) 'previous': value,
    };
