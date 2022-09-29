import 'package:json_annotation/json_annotation.dart';

part 'coin_dto.g.dart';

@JsonSerializable()
class CoinDto {
  final int id;
  final String? rank;
  final String symbol;
  final String name;
  final String? supply;
  @JsonKey(name: 'max_supply')
  final int? maxSupply;
  @JsonKey(name: 'market_cap_usd')
  final String? marketCapUsd;
  @JsonKey(name: 'volume_usd_24hr')
  final String? volumeUsd24Hr;
  @JsonKey(name: 'price_usd')
  final String? priceUsd;
  @JsonKey(name: 'change_percent_24hr')
  final String? changePercent24Hr;
  @JsonKey(name: 'vwap_24hr')
  final String? vwap24Hr;

  CoinDto(
      this.id,
      this.rank,
      this.symbol,
      this.name,
      this.supply,
      this.maxSupply,
      this.marketCapUsd,
      this.volumeUsd24Hr,
      this.priceUsd,
      this.changePercent24Hr,
      this.vwap24Hr);

  factory CoinDto.fromJson(Map<String, dynamic> json) =>
      _$CoinDtoFromJson(json);

  Map<String, dynamic> toJson() => _$CoinDtoToJson(this);
}
