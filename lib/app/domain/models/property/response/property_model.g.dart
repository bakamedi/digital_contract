// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'property_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PropertyModelImpl _$$PropertyModelImplFromJson(Map<String, dynamic> json) =>
    _$PropertyModelImpl(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: (json['total'] as num?)?.toInt(),
      page: json['page'] as String?,
      limit: json['limit'] as String?,
    );

Map<String, dynamic> _$$PropertyModelImplToJson(_$PropertyModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'total': instance.total,
      'page': instance.page,
      'limit': instance.limit,
    };

_$DatumImpl _$$DatumImplFromJson(Map<String, dynamic> json) => _$DatumImpl(
      id: json['id'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      address: json['address'] as String?,
      lat: (json['lat'] as num?)?.toDouble(),
      lng: (json['lng'] as num?)?.toDouble(),
      rooms: (json['rooms'] as num?)?.toInt(),
      bathrooms: (json['bathrooms'] as num?)?.toInt(),
      price: (json['price'] as num?)?.toDouble(),
      electricService: json['electricService'] as bool?,
      waterService: json['waterService'] as bool?,
      internetService: json['internetService'] as bool?,
      electricServicePrice: (json['electricServicePrice'] as num?)?.toInt(),
      waterServicePrice: (json['waterServicePrice'] as num?)?.toInt(),
      internetServicePrice: (json['internetServicePrice'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$DatumImplToJson(_$DatumImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'address': instance.address,
      'lat': instance.lat,
      'lng': instance.lng,
      'rooms': instance.rooms,
      'bathrooms': instance.bathrooms,
      'price': instance.price,
      'electricService': instance.electricService,
      'waterService': instance.waterService,
      'internetService': instance.internetService,
      'electricServicePrice': instance.electricServicePrice,
      'waterServicePrice': instance.waterServicePrice,
      'internetServicePrice': instance.internetServicePrice,
    };
