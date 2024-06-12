// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'property_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PropertyModel _$PropertyModelFromJson(Map<String, dynamic> json) {
  return _PropertyModel.fromJson(json);
}

/// @nodoc
mixin _$PropertyModel {
  List<Datum>? get data => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;
  String? get page => throw _privateConstructorUsedError;
  String? get limit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PropertyModelCopyWith<PropertyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PropertyModelCopyWith<$Res> {
  factory $PropertyModelCopyWith(
          PropertyModel value, $Res Function(PropertyModel) then) =
      _$PropertyModelCopyWithImpl<$Res, PropertyModel>;
  @useResult
  $Res call({List<Datum>? data, int? total, String? page, String? limit});
}

/// @nodoc
class _$PropertyModelCopyWithImpl<$Res, $Val extends PropertyModel>
    implements $PropertyModelCopyWith<$Res> {
  _$PropertyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? total = freezed,
    Object? page = freezed,
    Object? limit = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Datum>?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as String?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PropertyModelImplCopyWith<$Res>
    implements $PropertyModelCopyWith<$Res> {
  factory _$$PropertyModelImplCopyWith(
          _$PropertyModelImpl value, $Res Function(_$PropertyModelImpl) then) =
      __$$PropertyModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Datum>? data, int? total, String? page, String? limit});
}

/// @nodoc
class __$$PropertyModelImplCopyWithImpl<$Res>
    extends _$PropertyModelCopyWithImpl<$Res, _$PropertyModelImpl>
    implements _$$PropertyModelImplCopyWith<$Res> {
  __$$PropertyModelImplCopyWithImpl(
      _$PropertyModelImpl _value, $Res Function(_$PropertyModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? total = freezed,
    Object? page = freezed,
    Object? limit = freezed,
  }) {
    return _then(_$PropertyModelImpl(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Datum>?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as String?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PropertyModelImpl implements _PropertyModel {
  const _$PropertyModelImpl(
      {final List<Datum>? data, this.total, this.page, this.limit})
      : _data = data;

  factory _$PropertyModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PropertyModelImplFromJson(json);

  final List<Datum>? _data;
  @override
  List<Datum>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? total;
  @override
  final String? page;
  @override
  final String? limit;

  @override
  String toString() {
    return 'PropertyModel(data: $data, total: $total, page: $page, limit: $limit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PropertyModelImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_data), total, page, limit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PropertyModelImplCopyWith<_$PropertyModelImpl> get copyWith =>
      __$$PropertyModelImplCopyWithImpl<_$PropertyModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PropertyModelImplToJson(
      this,
    );
  }
}

abstract class _PropertyModel implements PropertyModel {
  const factory _PropertyModel(
      {final List<Datum>? data,
      final int? total,
      final String? page,
      final String? limit}) = _$PropertyModelImpl;

  factory _PropertyModel.fromJson(Map<String, dynamic> json) =
      _$PropertyModelImpl.fromJson;

  @override
  List<Datum>? get data;
  @override
  int? get total;
  @override
  String? get page;
  @override
  String? get limit;
  @override
  @JsonKey(ignore: true)
  _$$PropertyModelImplCopyWith<_$PropertyModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Datum _$DatumFromJson(Map<String, dynamic> json) {
  return _Datum.fromJson(json);
}

/// @nodoc
mixin _$Datum {
  String? get id => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  double? get lat => throw _privateConstructorUsedError;
  double? get lng => throw _privateConstructorUsedError;
  int? get rooms => throw _privateConstructorUsedError;
  int? get bathrooms => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;
  bool? get electricService => throw _privateConstructorUsedError;
  bool? get waterService => throw _privateConstructorUsedError;
  bool? get internetService => throw _privateConstructorUsedError;
  int? get electricServicePrice => throw _privateConstructorUsedError;
  int? get waterServicePrice => throw _privateConstructorUsedError;
  int? get internetServicePrice => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DatumCopyWith<Datum> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatumCopyWith<$Res> {
  factory $DatumCopyWith(Datum value, $Res Function(Datum) then) =
      _$DatumCopyWithImpl<$Res, Datum>;
  @useResult
  $Res call(
      {String? id,
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
      int? internetServicePrice});
}

/// @nodoc
class _$DatumCopyWithImpl<$Res, $Val extends Datum>
    implements $DatumCopyWith<$Res> {
  _$DatumCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? address = freezed,
    Object? lat = freezed,
    Object? lng = freezed,
    Object? rooms = freezed,
    Object? bathrooms = freezed,
    Object? price = freezed,
    Object? electricService = freezed,
    Object? waterService = freezed,
    Object? internetService = freezed,
    Object? electricServicePrice = freezed,
    Object? waterServicePrice = freezed,
    Object? internetServicePrice = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lng: freezed == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double?,
      rooms: freezed == rooms
          ? _value.rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as int?,
      bathrooms: freezed == bathrooms
          ? _value.bathrooms
          : bathrooms // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      electricService: freezed == electricService
          ? _value.electricService
          : electricService // ignore: cast_nullable_to_non_nullable
              as bool?,
      waterService: freezed == waterService
          ? _value.waterService
          : waterService // ignore: cast_nullable_to_non_nullable
              as bool?,
      internetService: freezed == internetService
          ? _value.internetService
          : internetService // ignore: cast_nullable_to_non_nullable
              as bool?,
      electricServicePrice: freezed == electricServicePrice
          ? _value.electricServicePrice
          : electricServicePrice // ignore: cast_nullable_to_non_nullable
              as int?,
      waterServicePrice: freezed == waterServicePrice
          ? _value.waterServicePrice
          : waterServicePrice // ignore: cast_nullable_to_non_nullable
              as int?,
      internetServicePrice: freezed == internetServicePrice
          ? _value.internetServicePrice
          : internetServicePrice // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DatumImplCopyWith<$Res> implements $DatumCopyWith<$Res> {
  factory _$$DatumImplCopyWith(
          _$DatumImpl value, $Res Function(_$DatumImpl) then) =
      __$$DatumImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
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
      int? internetServicePrice});
}

/// @nodoc
class __$$DatumImplCopyWithImpl<$Res>
    extends _$DatumCopyWithImpl<$Res, _$DatumImpl>
    implements _$$DatumImplCopyWith<$Res> {
  __$$DatumImplCopyWithImpl(
      _$DatumImpl _value, $Res Function(_$DatumImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? address = freezed,
    Object? lat = freezed,
    Object? lng = freezed,
    Object? rooms = freezed,
    Object? bathrooms = freezed,
    Object? price = freezed,
    Object? electricService = freezed,
    Object? waterService = freezed,
    Object? internetService = freezed,
    Object? electricServicePrice = freezed,
    Object? waterServicePrice = freezed,
    Object? internetServicePrice = freezed,
  }) {
    return _then(_$DatumImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lng: freezed == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double?,
      rooms: freezed == rooms
          ? _value.rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as int?,
      bathrooms: freezed == bathrooms
          ? _value.bathrooms
          : bathrooms // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      electricService: freezed == electricService
          ? _value.electricService
          : electricService // ignore: cast_nullable_to_non_nullable
              as bool?,
      waterService: freezed == waterService
          ? _value.waterService
          : waterService // ignore: cast_nullable_to_non_nullable
              as bool?,
      internetService: freezed == internetService
          ? _value.internetService
          : internetService // ignore: cast_nullable_to_non_nullable
              as bool?,
      electricServicePrice: freezed == electricServicePrice
          ? _value.electricServicePrice
          : electricServicePrice // ignore: cast_nullable_to_non_nullable
              as int?,
      waterServicePrice: freezed == waterServicePrice
          ? _value.waterServicePrice
          : waterServicePrice // ignore: cast_nullable_to_non_nullable
              as int?,
      internetServicePrice: freezed == internetServicePrice
          ? _value.internetServicePrice
          : internetServicePrice // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DatumImpl implements _Datum {
  const _$DatumImpl(
      {this.id,
      this.createdAt,
      this.updatedAt,
      this.address,
      this.lat,
      this.lng,
      this.rooms,
      this.bathrooms,
      this.price,
      this.electricService,
      this.waterService,
      this.internetService,
      this.electricServicePrice,
      this.waterServicePrice,
      this.internetServicePrice});

  factory _$DatumImpl.fromJson(Map<String, dynamic> json) =>
      _$$DatumImplFromJson(json);

  @override
  final String? id;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final String? address;
  @override
  final double? lat;
  @override
  final double? lng;
  @override
  final int? rooms;
  @override
  final int? bathrooms;
  @override
  final double? price;
  @override
  final bool? electricService;
  @override
  final bool? waterService;
  @override
  final bool? internetService;
  @override
  final int? electricServicePrice;
  @override
  final int? waterServicePrice;
  @override
  final int? internetServicePrice;

  @override
  String toString() {
    return 'Datum(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, address: $address, lat: $lat, lng: $lng, rooms: $rooms, bathrooms: $bathrooms, price: $price, electricService: $electricService, waterService: $waterService, internetService: $internetService, electricServicePrice: $electricServicePrice, waterServicePrice: $waterServicePrice, internetServicePrice: $internetServicePrice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DatumImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng) &&
            (identical(other.rooms, rooms) || other.rooms == rooms) &&
            (identical(other.bathrooms, bathrooms) ||
                other.bathrooms == bathrooms) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.electricService, electricService) ||
                other.electricService == electricService) &&
            (identical(other.waterService, waterService) ||
                other.waterService == waterService) &&
            (identical(other.internetService, internetService) ||
                other.internetService == internetService) &&
            (identical(other.electricServicePrice, electricServicePrice) ||
                other.electricServicePrice == electricServicePrice) &&
            (identical(other.waterServicePrice, waterServicePrice) ||
                other.waterServicePrice == waterServicePrice) &&
            (identical(other.internetServicePrice, internetServicePrice) ||
                other.internetServicePrice == internetServicePrice));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      createdAt,
      updatedAt,
      address,
      lat,
      lng,
      rooms,
      bathrooms,
      price,
      electricService,
      waterService,
      internetService,
      electricServicePrice,
      waterServicePrice,
      internetServicePrice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DatumImplCopyWith<_$DatumImpl> get copyWith =>
      __$$DatumImplCopyWithImpl<_$DatumImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DatumImplToJson(
      this,
    );
  }
}

abstract class _Datum implements Datum {
  const factory _Datum(
      {final String? id,
      final DateTime? createdAt,
      final DateTime? updatedAt,
      final String? address,
      final double? lat,
      final double? lng,
      final int? rooms,
      final int? bathrooms,
      final double? price,
      final bool? electricService,
      final bool? waterService,
      final bool? internetService,
      final int? electricServicePrice,
      final int? waterServicePrice,
      final int? internetServicePrice}) = _$DatumImpl;

  factory _Datum.fromJson(Map<String, dynamic> json) = _$DatumImpl.fromJson;

  @override
  String? get id;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  String? get address;
  @override
  double? get lat;
  @override
  double? get lng;
  @override
  int? get rooms;
  @override
  int? get bathrooms;
  @override
  double? get price;
  @override
  bool? get electricService;
  @override
  bool? get waterService;
  @override
  bool? get internetService;
  @override
  int? get electricServicePrice;
  @override
  int? get waterServicePrice;
  @override
  int? get internetServicePrice;
  @override
  @JsonKey(ignore: true)
  _$$DatumImplCopyWith<_$DatumImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
