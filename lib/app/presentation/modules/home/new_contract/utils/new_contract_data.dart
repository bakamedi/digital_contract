// To parse this JSON data, do
//
//     final landLordHouseData = landLordHouseDataFromJson(jsonString);

import 'dart:convert';

LandLordHouseData landLordHouseDataFromJson(String str) =>
    LandLordHouseData.fromJson(json.decode(str));

String landLordHouseDataToJson(LandLordHouseData data) =>
    json.encode(data.toJson());

class LandLordHouseData {
  final List<Required> requireds;
  final List<OptionalService> optionalServices;

  LandLordHouseData({
    required this.requireds,
    required this.optionalServices,
  });

  factory LandLordHouseData.fromJson(Map<String, dynamic> json) =>
      LandLordHouseData(
        requireds: List<Required>.from(
            json["requireds"].map((x) => Required.fromJson(x))),
        optionalServices: List<OptionalService>.from(
            json["optional_services"].map((x) => OptionalService.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "requireds": List<dynamic>.from(requireds.map((x) => x.toJson())),
        "optional_services":
            List<dynamic>.from(optionalServices.map((x) => x.toJson())),
      };
}

class OptionalService {
  final String key;
  final String value;
  final bool disabled;

  OptionalService({
    required this.key,
    required this.value,
    required this.disabled,
  });

  factory OptionalService.fromJson(Map<String, dynamic> json) =>
      OptionalService(
        key: json["key"],
        value: json["value"],
        disabled: json["disabled"],
      );

  Map<String, dynamic> toJson() => {
        "key": key,
        "value": value,
        "disabled": disabled,
      };
}

class Required {
  final String key;
  final String value;

  Required({
    required this.key,
    required this.value,
  });

  factory Required.fromJson(Map<String, dynamic> json) => Required(
        key: json["key"],
        value: json["value"],
      );

  Map<String, dynamic> toJson() => {
        "key": key,
        "value": value,
      };
}
