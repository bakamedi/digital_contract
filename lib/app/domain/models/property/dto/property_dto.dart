// To parse this JSON data, do
//
//     final propertyDto = propertyDtoFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'property_dto.freezed.dart';
part 'property_dto.g.dart';

PropertyDto propertyDtoFromJson(String str) =>
    PropertyDto.fromJson(json.decode(str));

String propertyDtoToJson(PropertyDto data) => json.encode(data.toJson());

@freezed
class PropertyDto with _$PropertyDto {
  const factory PropertyDto({
    String? address,
    int? rooms,
    int? bathrooms,
    double? propertyPrice,
    bool? electricService,
    bool? waterService,
    bool? internetService,
    double? electricServicePrice,
    double? waterServicePrice,
    double? internetServicePrice,
  }) = _PropertyDto;

  factory PropertyDto.fromJson(Map<String, dynamic> json) =>
      _$PropertyDtoFromJson(json);
}
