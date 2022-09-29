// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'status_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StatusDto _$StatusDtoFromJson(Map<String, dynamic> json) => StatusDto(
      json['timestamp'] as String,
      json['error_code'] as int,
      json['error_message'] as String?,
      json['elapsed'] as int,
      json['credit_count'] as int,
    );

Map<String, dynamic> _$StatusDtoToJson(StatusDto instance) => <String, dynamic>{
      'timestamp': instance.timestamp,
      'error_code': instance.errorCode,
      'error_message': instance.errorMessage,
      'elapsed': instance.elapsed,
      'credit_count': instance.creditCount,
    };
