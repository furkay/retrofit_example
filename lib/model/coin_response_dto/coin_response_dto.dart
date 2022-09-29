import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit_example/model/coin_dto/coin_dto.dart';
import 'package:retrofit_example/model/status_dto/status_dto.dart';
part 'coin_response_dto.g.dart';

@JsonSerializable()
class CoinResponseDto {
  @JsonKey(name: 'data')
  final Map<String, CoinDto> data;
  @JsonKey(name: 'status')
  final StatusDto statusDto;

  CoinResponseDto(this.data, this.statusDto);

  factory CoinResponseDto.fromJson(Map<String, dynamic> json) =>
      _$CoinResponseDtoFromJson(json);

  Map<String, dynamic> toJson() => _$CoinResponseDtoToJson(this);
}
