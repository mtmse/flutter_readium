// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'locator.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Locator _$LocatorFromJson(Map<String, dynamic> json) => _Locator(
  href: json['href'] as String,
  type: json['type'] as String,
  title: json['title'] as String?,
  locations: json['locations'] == null
      ? null
      : Locations.fromJson(json['locations'] as Map<String, dynamic>),
  text: json['text'] == null
      ? null
      : LocatorText.fromJson(json['text'] as Map<String, dynamic>),
);

Map<String, dynamic> _$LocatorToJson(_Locator instance) => <String, dynamic>{
  'href': instance.href,
  'type': instance.type,
  'title': ?instance.title,
  'locations': ?instance.locations?.toJson(),
  'text': ?instance.text?.toJson(),
};
