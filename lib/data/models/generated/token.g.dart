// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../token.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Token _$TokenFromJson(Map<String, dynamic> json) => Token(
      accessToken: json['access_token'] as String?,
      tokenType: json['token_type'] as String?,
      expiresIn: (json['expires_in'] as num?)?.toInt(),
      refreshToken: json['refresh_token'] as String?,
      scope: json['scope'] as String?,
    );

Map<String, dynamic> _$TokenToJson(Token instance) => <String, dynamic>{
      if (instance.accessToken case final value?) 'access_token': value,
      if (instance.tokenType case final value?) 'token_type': value,
      if (instance.expiresIn case final value?) 'expires_in': value,
      if (instance.refreshToken case final value?) 'refresh_token': value,
      if (instance.scope case final value?) 'scope': value,
    };
