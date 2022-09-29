// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coin_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CoinResponseDto _$CoinResponseDtoFromJson(Map<String, dynamic> json) =>
    CoinResponseDto(
      (json['data'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, CoinDto.fromJson(e as Map<String, dynamic>)),
      ),
      StatusDto.fromJson(json['status'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CoinResponseDtoToJson(CoinResponseDto instance) =>
    <String, dynamic>{
      'data': instance.data,
      'status': instance.statusDto,
    };
