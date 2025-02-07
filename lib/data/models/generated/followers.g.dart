// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../followers.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Followers _$FollowersFromJson(Map<String, dynamic> json) => Followers(
      href: json['href'],
      total: (json['total'] as num?)?.toInt(),
    );

Map<String, dynamic> _$FollowersToJson(Followers instance) => <String, dynamic>{
      if (instance.href case final value?) 'href': value,
      if (instance.total case final value?) 'total': value,
    };
