// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coin_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CoinDto _$CoinDtoFromJson(Map<String, dynamic> json) => CoinDto(
      json['id'] as int,
      json['rank'] as String?,
      json['symbol'] as String,
      json['name'] as String,
      json['supply'] as String?,
      json['max_supply'] as int?,
      json['market_cap_usd'] as String?,
      json['volume_usd_24hr'] as String?,
      json['price_usd'] as String?,
      json['change_percent_24hr'] as String?,
      json['vwap_24hr'] as String?,
    );

Map<String, dynamic> _$CoinDtoToJson(CoinDto instance) => <String, dynamic>{
      'id': instance.id,
      'rank': instance.rank,
      'symbol': instance.symbol,
      'name': instance.name,
      'supply': instance.supply,
      'max_supply': instance.maxSupply,
      'market_cap_usd': instance.marketCapUsd,
      'volume_usd_24hr': instance.volumeUsd24Hr,
      'price_usd': instance.priceUsd,
      'change_percent_24hr': instance.changePercent24Hr,
      'vwap_24hr': instance.vwap24Hr,
    };
