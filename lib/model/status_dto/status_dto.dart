import 'package:json_annotation/json_annotation.dart';
part 'status_dto.g.dart';

@JsonSerializable()
class StatusDto {
  final String timestamp;
  @JsonKey(name: 'error_code')
  final int errorCode;
  @JsonKey(name: 'error_message')
  final String? errorMessage;
  final int elapsed;
  @JsonKey(name: 'credit_count')
  final int creditCount;

  StatusDto(this.timestamp, this.errorCode, this.errorMessage, this.elapsed,
      this.creditCount);

  factory StatusDto.fromJson(Map<String, dynamic> json) =>
      _$StatusDtoFromJson(json);
  Map<String, dynamic> toJson() => _$StatusDtoToJson(this);
}
