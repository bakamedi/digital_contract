// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signature_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignatureState {
  File? get signatureFile => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignatureStateCopyWith<SignatureState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignatureStateCopyWith<$Res> {
  factory $SignatureStateCopyWith(
          SignatureState value, $Res Function(SignatureState) then) =
      _$SignatureStateCopyWithImpl<$Res, SignatureState>;
  @useResult
  $Res call({File? signatureFile});
}

/// @nodoc
class _$SignatureStateCopyWithImpl<$Res, $Val extends SignatureState>
    implements $SignatureStateCopyWith<$Res> {
  _$SignatureStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signatureFile = freezed,
  }) {
    return _then(_value.copyWith(
      signatureFile: freezed == signatureFile
          ? _value.signatureFile
          : signatureFile // ignore: cast_nullable_to_non_nullable
              as File?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignatureStateImplCopyWith<$Res>
    implements $SignatureStateCopyWith<$Res> {
  factory _$$SignatureStateImplCopyWith(_$SignatureStateImpl value,
          $Res Function(_$SignatureStateImpl) then) =
      __$$SignatureStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({File? signatureFile});
}

/// @nodoc
class __$$SignatureStateImplCopyWithImpl<$Res>
    extends _$SignatureStateCopyWithImpl<$Res, _$SignatureStateImpl>
    implements _$$SignatureStateImplCopyWith<$Res> {
  __$$SignatureStateImplCopyWithImpl(
      _$SignatureStateImpl _value, $Res Function(_$SignatureStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signatureFile = freezed,
  }) {
    return _then(_$SignatureStateImpl(
      signatureFile: freezed == signatureFile
          ? _value.signatureFile
          : signatureFile // ignore: cast_nullable_to_non_nullable
              as File?,
    ));
  }
}

/// @nodoc

class _$SignatureStateImpl extends _SignatureState {
  const _$SignatureStateImpl({this.signatureFile}) : super._();

  @override
  final File? signatureFile;

  @override
  String toString() {
    return 'SignatureState(signatureFile: $signatureFile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignatureStateImpl &&
            (identical(other.signatureFile, signatureFile) ||
                other.signatureFile == signatureFile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, signatureFile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignatureStateImplCopyWith<_$SignatureStateImpl> get copyWith =>
      __$$SignatureStateImplCopyWithImpl<_$SignatureStateImpl>(
          this, _$identity);
}

abstract class _SignatureState extends SignatureState {
  const factory _SignatureState({final File? signatureFile}) =
      _$SignatureStateImpl;
  const _SignatureState._() : super._();

  @override
  File? get signatureFile;
  @override
  @JsonKey(ignore: true)
  _$$SignatureStateImplCopyWith<_$SignatureStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
