// To parse this JSON data, do
//
//     final tokenModel = tokenModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'token_model.freezed.dart';
part 'token_model.g.dart';

TokenModel tokenModelFromJson(String str) =>
    TokenModel.fromJson(json.decode(str));

String tokenModelToJson(TokenModel data) => json.encode(data.toJson());

@freezed
class TokenModel with _$TokenModel {
  const factory TokenModel({
    String? id,
    String? fullname,
    String? nui,
    String? email,
    String? phone,
    String? userType,
    String? token,
  }) = _TokenModel;

  factory TokenModel.fromJson(Map<String, dynamic> json) =>
      _$TokenModelFromJson(json);
}
