// To parse this JSON data, do
//
//     final propertyModel = propertyModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'property_model.freezed.dart';
part 'property_model.g.dart';

PropertyModel propertyModelFromJson(String str) =>
    PropertyModel.fromJson(json.decode(str));

String propertyModelToJson(PropertyModel data) => json.encode(data.toJson());

@freezed
class PropertyModel with _$PropertyModel {
  const factory PropertyModel({
    List<Datum>? data,
    int? total,
    String? page,
    String? limit,
  }) = _PropertyModel;

  factory PropertyModel.fromJson(Map<String, dynamic> json) =>
      _$PropertyModelFromJson(json);
}

@freezed
class Datum with _$Datum {
  const factory Datum({
    String? id,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? address,
    double? lat,
    double? lng,
    int? rooms,
    int? bathrooms,
    double? price,
    bool? electricService,
    bool? waterService,
    bool? internetService,
    int? electricServicePrice,
    int? waterServicePrice,
    int? internetServicePrice,
  }) = _Datum;

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
}
