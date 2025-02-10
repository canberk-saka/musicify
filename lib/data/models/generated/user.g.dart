// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      country: json['country'] as String?,
      displayName: json['display_name'] as String?,
      email: json['email'] as String?,
      explicitContent: json['explicit_content'] == null
          ? null
          : ExplicitContent.fromJson(
              json['explicit_content'] as Map<String, dynamic>),
      externalUrls: json['external_urls'] == null
          ? null
          : ExternalUrls.fromJson(
              json['external_urls'] as Map<String, dynamic>),
      followers: json['followers'] == null
          ? null
          : Followers.fromJson(json['followers'] as Map<String, dynamic>),
      href: json['href'] as String?,
      id: json['id'] as String?,
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => ImageElements.fromJson(e as Map<String, dynamic>))
          .toList(),
      product: json['product'] as String?,
      type: json['type'] as String?,
      uri: json['uri'] as String?,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      if (instance.country case final value?) 'country': value,
      if (instance.displayName case final value?) 'display_name': value,
      if (instance.email case final value?) 'email': value,
      if (instance.explicitContent?.toJson() case final value?)
        'explicit_content': value,
      if (instance.externalUrls?.toJson() case final value?)
        'external_urls': value,
      if (instance.followers?.toJson() case final value?) 'followers': value,
      if (instance.href case final value?) 'href': value,
      if (instance.id case final value?) 'id': value,
      if (instance.images?.map((e) => e.toJson()).toList() case final value?)
        'images': value,
      if (instance.product case final value?) 'product': value,
      if (instance.type case final value?) 'type': value,
      if (instance.uri case final value?) 'uri': value,
    };
