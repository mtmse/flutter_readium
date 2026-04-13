// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'holds.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Holds _$HoldsFromJson(Map<String, dynamic> json) => _Holds(
  position: (json['position'] as num?)?.toInt(),
  total: (json['total'] as num?)?.toInt(),
);

Map<String, dynamic> _$HoldsToJson(_Holds instance) => <String, dynamic>{
  'position': ?instance.position,
  'total': ?instance.total,
};
