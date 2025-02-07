// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../explicit_content.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExplicitContent _$ExplicitContentFromJson(Map<String, dynamic> json) =>
    ExplicitContent(
      filterEnabled: json['filter_enabled'] as bool?,
      filterLocked: json['filter_locked'] as bool?,
    );

Map<String, dynamic> _$ExplicitContentToJson(ExplicitContent instance) =>
    <String, dynamic>{
      if (instance.filterEnabled case final value?) 'filter_enabled': value,
      if (instance.filterLocked case final value?) 'filter_locked': value,
    };
