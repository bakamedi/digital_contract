// To parse this JSON data, do
//
//     final tokenModel = tokenModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'token_model.freezed.dart';
part 'token_model.g.dart';

TokenModel tokenModelFromJson(String str) => TokenModel.fromJson(
      json.decode(str),
    );

String tokenModelToJson(TokenModel data) => json.encode(data.toJson());

@freezed
class TokenModel with _$TokenModel {
  const factory TokenModel({
    required Data data,
  }) = _TokenModel;

  factory TokenModel.fromJson(Map<String, dynamic> json) =>
      _$TokenModelFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    required String id,
    required String email,
    required String token,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
