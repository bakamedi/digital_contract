// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'qr_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$QrState {
  MobileScannerController? get mobileScannerController =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QrStateCopyWith<QrState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QrStateCopyWith<$Res> {
  factory $QrStateCopyWith(QrState value, $Res Function(QrState) then) =
      _$QrStateCopyWithImpl<$Res, QrState>;
  @useResult
  $Res call({MobileScannerController? mobileScannerController});
}

/// @nodoc
class _$QrStateCopyWithImpl<$Res, $Val extends QrState>
    implements $QrStateCopyWith<$Res> {
  _$QrStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mobileScannerController = freezed,
  }) {
    return _then(_value.copyWith(
      mobileScannerController: freezed == mobileScannerController
          ? _value.mobileScannerController
          : mobileScannerController // ignore: cast_nullable_to_non_nullable
              as MobileScannerController?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QrStateImplCopyWith<$Res> implements $QrStateCopyWith<$Res> {
  factory _$$QrStateImplCopyWith(
          _$QrStateImpl value, $Res Function(_$QrStateImpl) then) =
      __$$QrStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MobileScannerController? mobileScannerController});
}

/// @nodoc
class __$$QrStateImplCopyWithImpl<$Res>
    extends _$QrStateCopyWithImpl<$Res, _$QrStateImpl>
    implements _$$QrStateImplCopyWith<$Res> {
  __$$QrStateImplCopyWithImpl(
      _$QrStateImpl _value, $Res Function(_$QrStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mobileScannerController = freezed,
  }) {
    return _then(_$QrStateImpl(
      mobileScannerController: freezed == mobileScannerController
          ? _value.mobileScannerController
          : mobileScannerController // ignore: cast_nullable_to_non_nullable
              as MobileScannerController?,
    ));
  }
}

/// @nodoc

class _$QrStateImpl extends _QrState {
  const _$QrStateImpl({this.mobileScannerController}) : super._();

  @override
  final MobileScannerController? mobileScannerController;

  @override
  String toString() {
    return 'QrState(mobileScannerController: $mobileScannerController)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QrStateImpl &&
            (identical(
                    other.mobileScannerController, mobileScannerController) ||
                other.mobileScannerController == mobileScannerController));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mobileScannerController);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QrStateImplCopyWith<_$QrStateImpl> get copyWith =>
      __$$QrStateImplCopyWithImpl<_$QrStateImpl>(this, _$identity);
}

abstract class _QrState extends QrState {
  const factory _QrState(
      {final MobileScannerController? mobileScannerController}) = _$QrStateImpl;
  const _QrState._() : super._();

  @override
  MobileScannerController? get mobileScannerController;
  @override
  @JsonKey(ignore: true)
  _$$QrStateImplCopyWith<_$QrStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
