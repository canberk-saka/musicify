// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../image_elements.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ImageElements _$ImageElementsFromJson(Map<String, dynamic> json) =>
    ImageElements(
      url: json['url'] as String?,
      height: (json['height'] as num?)?.toInt(),
      width: (json['width'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ImageElementsToJson(ImageElements instance) =>
    <String, dynamic>{
      if (instance.url case final value?) 'url': value,
      if (instance.height case final value?) 'height': value,
      if (instance.width case final value?) 'width': value,
    };
