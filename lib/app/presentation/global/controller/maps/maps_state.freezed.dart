// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'maps_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MapsState {
  Completer<GoogleMapController>? get completerController =>
      throw _privateConstructorUsedError;
  GoogleMapController? get googleMapcontroller =>
      throw _privateConstructorUsedError;
  CameraPosition? get initialCameraPosition =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MapsStateCopyWith<MapsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapsStateCopyWith<$Res> {
  factory $MapsStateCopyWith(MapsState value, $Res Function(MapsState) then) =
      _$MapsStateCopyWithImpl<$Res, MapsState>;
  @useResult
  $Res call(
      {Completer<GoogleMapController>? completerController,
      GoogleMapController? googleMapcontroller,
      CameraPosition? initialCameraPosition});
}

/// @nodoc
class _$MapsStateCopyWithImpl<$Res, $Val extends MapsState>
    implements $MapsStateCopyWith<$Res> {
  _$MapsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? completerController = freezed,
    Object? googleMapcontroller = freezed,
    Object? initialCameraPosition = freezed,
  }) {
    return _then(_value.copyWith(
      completerController: freezed == completerController
          ? _value.completerController
          : completerController // ignore: cast_nullable_to_non_nullable
              as Completer<GoogleMapController>?,
      googleMapcontroller: freezed == googleMapcontroller
          ? _value.googleMapcontroller
          : googleMapcontroller // ignore: cast_nullable_to_non_nullable
              as GoogleMapController?,
      initialCameraPosition: freezed == initialCameraPosition
          ? _value.initialCameraPosition
          : initialCameraPosition // ignore: cast_nullable_to_non_nullable
              as CameraPosition?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MapsStateImplCopyWith<$Res>
    implements $MapsStateCopyWith<$Res> {
  factory _$$MapsStateImplCopyWith(
          _$MapsStateImpl value, $Res Function(_$MapsStateImpl) then) =
      __$$MapsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Completer<GoogleMapController>? completerController,
      GoogleMapController? googleMapcontroller,
      CameraPosition? initialCameraPosition});
}

/// @nodoc
class __$$MapsStateImplCopyWithImpl<$Res>
    extends _$MapsStateCopyWithImpl<$Res, _$MapsStateImpl>
    implements _$$MapsStateImplCopyWith<$Res> {
  __$$MapsStateImplCopyWithImpl(
      _$MapsStateImpl _value, $Res Function(_$MapsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? completerController = freezed,
    Object? googleMapcontroller = freezed,
    Object? initialCameraPosition = freezed,
  }) {
    return _then(_$MapsStateImpl(
      completerController: freezed == completerController
          ? _value.completerController
          : completerController // ignore: cast_nullable_to_non_nullable
              as Completer<GoogleMapController>?,
      googleMapcontroller: freezed == googleMapcontroller
          ? _value.googleMapcontroller
          : googleMapcontroller // ignore: cast_nullable_to_non_nullable
              as GoogleMapController?,
      initialCameraPosition: freezed == initialCameraPosition
          ? _value.initialCameraPosition
          : initialCameraPosition // ignore: cast_nullable_to_non_nullable
              as CameraPosition?,
    ));
  }
}

/// @nodoc

class _$MapsStateImpl extends _MapsState {
  const _$MapsStateImpl(
      {this.completerController,
      this.googleMapcontroller,
      this.initialCameraPosition})
      : super._();

  @override
  final Completer<GoogleMapController>? completerController;
  @override
  final GoogleMapController? googleMapcontroller;
  @override
  final CameraPosition? initialCameraPosition;

  @override
  String toString() {
    return 'MapsState(completerController: $completerController, googleMapcontroller: $googleMapcontroller, initialCameraPosition: $initialCameraPosition)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MapsStateImpl &&
            (identical(other.completerController, completerController) ||
                other.completerController == completerController) &&
            (identical(other.googleMapcontroller, googleMapcontroller) ||
                other.googleMapcontroller == googleMapcontroller) &&
            (identical(other.initialCameraPosition, initialCameraPosition) ||
                other.initialCameraPosition == initialCameraPosition));
  }

  @override
  int get hashCode => Object.hash(runtimeType, completerController,
      googleMapcontroller, initialCameraPosition);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MapsStateImplCopyWith<_$MapsStateImpl> get copyWith =>
      __$$MapsStateImplCopyWithImpl<_$MapsStateImpl>(this, _$identity);
}

abstract class _MapsState extends MapsState {
  const factory _MapsState(
      {final Completer<GoogleMapController>? completerController,
      final GoogleMapController? googleMapcontroller,
      final CameraPosition? initialCameraPosition}) = _$MapsStateImpl;
  const _MapsState._() : super._();

  @override
  Completer<GoogleMapController>? get completerController;
  @override
  GoogleMapController? get googleMapcontroller;
  @override
  CameraPosition? get initialCameraPosition;
  @override
  @JsonKey(ignore: true)
  _$$MapsStateImplCopyWith<_$MapsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
