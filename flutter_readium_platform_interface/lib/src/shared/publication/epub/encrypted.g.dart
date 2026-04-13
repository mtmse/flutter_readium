// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'encrypted.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Encrypted _$EncryptedFromJson(Map<String, dynamic> json) => _Encrypted(
  algorithm: json['algorithm'] as String,
  compression: json['compression'] as String?,
  originalLength: (json['originalLength'] as num?)?.toInt(),
  profile: json['profile'] as String?,
  scheme: json['scheme'] as String?,
);

Map<String, dynamic> _$EncryptedToJson(_Encrypted instance) =>
    <String, dynamic>{
      'algorithm': instance.algorithm,
      'compression': ?instance.compression,
      'originalLength': ?instance.originalLength,
      'profile': ?instance.profile,
      'scheme': ?instance.scheme,
    };
