// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'locations.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Locations _$LocationsFromJson(Map<String, dynamic> json) => _Locations(
  fragments: (json['fragments'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  progression: (json['progression'] as num?)?.toDouble(),
  customProgressionOverride: (json['customProgressionOverride'] as num?)
      ?.toDouble(),
  position: (json['position'] as num?)?.toInt(),
  totalProgression: (json['totalProgression'] as num?)?.toDouble(),
  cssSelector: json['cssSelector'] as String?,
  partialCfi: json['partialCfi'] as String?,
  domRange: json['domRange'] == null
      ? null
      : DomRange.fromJson(json['domRange'] as Map<String, dynamic>),
);

Map<String, dynamic> _$LocationsToJson(_Locations instance) =>
    <String, dynamic>{
      'fragments': ?instance.fragments,
      'progression': ?instance.progression,
      'customProgressionOverride': ?instance.customProgressionOverride,
      'position': ?instance.position,
      'totalProgression': ?instance.totalProgression,
      'cssSelector': ?instance.cssSelector,
      'partialCfi': ?instance.partialCfi,
      'domRange': ?instance.domRange?.toJson(),
    };
