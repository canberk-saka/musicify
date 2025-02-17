// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../user_playlist_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserPlaylistRequest _$UserPlaylistRequestFromJson(Map<String, dynamic> json) =>
    UserPlaylistRequest(
      limit: json['limit'] as String?,
      offset: json['offset'] as String?,
    );

Map<String, dynamic> _$UserPlaylistRequestToJson(
        UserPlaylistRequest instance) =>
    <String, dynamic>{
      if (instance.limit case final value?) 'limit': value,
      if (instance.offset case final value?) 'offset': value,
    };
