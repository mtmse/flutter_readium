// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'belongs_to.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BelongsTo _$BelongsToFromJson(Map<String, dynamic> json) => _BelongsTo(
  collection: contributorListFromJson(json['collection']),
  series: contributorListFromJson(json['series']),
);

Map<String, dynamic> _$BelongsToToJson(_BelongsTo instance) =>
    <String, dynamic>{
      'collection': ?contributorListToJson(instance.collection),
      'series': ?contributorListToJson(instance.series),
    };
