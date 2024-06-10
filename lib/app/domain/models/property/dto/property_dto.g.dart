// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'property_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PropertyDtoImpl _$$PropertyDtoImplFromJson(Map<String, dynamic> json) =>
    _$PropertyDtoImpl(
      address: json['address'] as String?,
      rooms: (json['rooms'] as num?)?.toInt(),
      bathrooms: (json['bathrooms'] as num?)?.toInt(),
      propertyPrice: (json['propertyPrice'] as num?)?.toDouble(),
      electricService: json['electricService'] as bool?,
      waterService: json['waterService'] as bool?,
      internetService: json['internetService'] as bool?,
      electricServicePrice: (json['electricServicePrice'] as num?)?.toDouble(),
      waterServicePrice: (json['waterServicePrice'] as num?)?.toDouble(),
      internetServicePrice: (json['internetServicePrice'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$PropertyDtoImplToJson(_$PropertyDtoImpl instance) =>
    <String, dynamic>{
      'address': instance.address,
      'rooms': instance.rooms,
      'bathrooms': instance.bathrooms,
      'propertyPrice': instance.propertyPrice,
      'electricService': instance.electricService,
      'waterService': instance.waterService,
      'internetService': instance.internetService,
      'electricServicePrice': instance.electricServicePrice,
      'waterServicePrice': instance.waterServicePrice,
      'internetServicePrice': instance.internetServicePrice,
    };
