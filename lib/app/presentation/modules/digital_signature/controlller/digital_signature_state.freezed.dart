// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'digital_signature_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DigitalSignatureState {
  String get mySignature => throw _privateConstructorUsedError;
  GlobalKey<SfSignaturePadState>? get signatureGlobalKey =>
      throw _privateConstructorUsedError;
  bool get show => throw _privateConstructorUsedError;
  double get stroke => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DigitalSignatureStateCopyWith<DigitalSignatureState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DigitalSignatureStateCopyWith<$Res> {
  factory $DigitalSignatureStateCopyWith(DigitalSignatureState value,
          $Res Function(DigitalSignatureState) then) =
      _$DigitalSignatureStateCopyWithImpl<$Res, DigitalSignatureState>;
  @useResult
  $Res call(
      {String mySignature,
      GlobalKey<SfSignaturePadState>? signatureGlobalKey,
      bool show,
      double stroke});
}

/// @nodoc
class _$DigitalSignatureStateCopyWithImpl<$Res,
        $Val extends DigitalSignatureState>
    implements $DigitalSignatureStateCopyWith<$Res> {
  _$DigitalSignatureStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mySignature = null,
    Object? signatureGlobalKey = freezed,
    Object? show = null,
    Object? stroke = null,
  }) {
    return _then(_value.copyWith(
      mySignature: null == mySignature
          ? _value.mySignature
          : mySignature // ignore: cast_nullable_to_non_nullable
              as String,
      signatureGlobalKey: freezed == signatureGlobalKey
          ? _value.signatureGlobalKey
          : signatureGlobalKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<SfSignaturePadState>?,
      show: null == show
          ? _value.show
          : show // ignore: cast_nullable_to_non_nullable
              as bool,
      stroke: null == stroke
          ? _value.stroke
          : stroke // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DigitalSignatureStateImplCopyWith<$Res>
    implements $DigitalSignatureStateCopyWith<$Res> {
  factory _$$DigitalSignatureStateImplCopyWith(
          _$DigitalSignatureStateImpl value,
          $Res Function(_$DigitalSignatureStateImpl) then) =
      __$$DigitalSignatureStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String mySignature,
      GlobalKey<SfSignaturePadState>? signatureGlobalKey,
      bool show,
      double stroke});
}

/// @nodoc
class __$$DigitalSignatureStateImplCopyWithImpl<$Res>
    extends _$DigitalSignatureStateCopyWithImpl<$Res,
        _$DigitalSignatureStateImpl>
    implements _$$DigitalSignatureStateImplCopyWith<$Res> {
  __$$DigitalSignatureStateImplCopyWithImpl(_$DigitalSignatureStateImpl _value,
      $Res Function(_$DigitalSignatureStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mySignature = null,
    Object? signatureGlobalKey = freezed,
    Object? show = null,
    Object? stroke = null,
  }) {
    return _then(_$DigitalSignatureStateImpl(
      mySignature: null == mySignature
          ? _value.mySignature
          : mySignature // ignore: cast_nullable_to_non_nullable
              as String,
      signatureGlobalKey: freezed == signatureGlobalKey
          ? _value.signatureGlobalKey
          : signatureGlobalKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<SfSignaturePadState>?,
      show: null == show
          ? _value.show
          : show // ignore: cast_nullable_to_non_nullable
              as bool,
      stroke: null == stroke
          ? _value.stroke
          : stroke // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$DigitalSignatureStateImpl extends _DigitalSignatureState {
  const _$DigitalSignatureStateImpl(
      {this.mySignature = 'my_signature',
      this.signatureGlobalKey,
      this.show = true,
      this.stroke = 3.0})
      : super._();

  @override
  @JsonKey()
  final String mySignature;
  @override
  final GlobalKey<SfSignaturePadState>? signatureGlobalKey;
  @override
  @JsonKey()
  final bool show;
  @override
  @JsonKey()
  final double stroke;

  @override
  String toString() {
    return 'DigitalSignatureState(mySignature: $mySignature, signatureGlobalKey: $signatureGlobalKey, show: $show, stroke: $stroke)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DigitalSignatureStateImpl &&
            (identical(other.mySignature, mySignature) ||
                other.mySignature == mySignature) &&
            (identical(other.signatureGlobalKey, signatureGlobalKey) ||
                other.signatureGlobalKey == signatureGlobalKey) &&
            (identical(other.show, show) || other.show == show) &&
            (identical(other.stroke, stroke) || other.stroke == stroke));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, mySignature, signatureGlobalKey, show, stroke);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DigitalSignatureStateImplCopyWith<_$DigitalSignatureStateImpl>
      get copyWith => __$$DigitalSignatureStateImplCopyWithImpl<
          _$DigitalSignatureStateImpl>(this, _$identity);
}

abstract class _DigitalSignatureState extends DigitalSignatureState {
  const factory _DigitalSignatureState(
      {final String mySignature,
      final GlobalKey<SfSignaturePadState>? signatureGlobalKey,
      final bool show,
      final double stroke}) = _$DigitalSignatureStateImpl;
  const _DigitalSignatureState._() : super._();

  @override
  String get mySignature;
  @override
  GlobalKey<SfSignaturePadState>? get signatureGlobalKey;
  @override
  bool get show;
  @override
  double get stroke;
  @override
  @JsonKey(ignore: true)
  _$$DigitalSignatureStateImplCopyWith<_$DigitalSignatureStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
