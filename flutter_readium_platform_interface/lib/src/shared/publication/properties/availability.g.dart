// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'availability.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Availability _$AvailabilityFromJson(Map<String, dynamic> json) =>
    _Availability(
      state: $enumDecode(_$AvailabilityStateEnumMap, json['state']),
      since: dateTimeLocal.fromJson(json['since'] as String?),
      until: dateTimeLocal.fromJson(json['until'] as String?),
    );

Map<String, dynamic> _$AvailabilityToJson(_Availability instance) =>
    <String, dynamic>{
      'state': _$AvailabilityStateEnumMap[instance.state]!,
      'since': ?dateTimeLocal.toJson(instance.since),
      'until': ?dateTimeLocal.toJson(instance.until),
    };

const _$AvailabilityStateEnumMap = {
  AvailabilityState.available: 'available',
  AvailabilityState.unavailable: 'unavailable',
  AvailabilityState.reserved: 'reserved',
  AvailabilityState.ready: 'ready',
};
