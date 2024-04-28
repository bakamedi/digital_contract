// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contract_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ContractState {
  File? get signatureLandLordFile => throw _privateConstructorUsedError;
  File? get signatureLesseFile => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ContractStateCopyWith<ContractState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContractStateCopyWith<$Res> {
  factory $ContractStateCopyWith(
          ContractState value, $Res Function(ContractState) then) =
      _$ContractStateCopyWithImpl<$Res, ContractState>;
  @useResult
  $Res call({File? signatureLandLordFile, File? signatureLesseFile});
}

/// @nodoc
class _$ContractStateCopyWithImpl<$Res, $Val extends ContractState>
    implements $ContractStateCopyWith<$Res> {
  _$ContractStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signatureLandLordFile = freezed,
    Object? signatureLesseFile = freezed,
  }) {
    return _then(_value.copyWith(
      signatureLandLordFile: freezed == signatureLandLordFile
          ? _value.signatureLandLordFile
          : signatureLandLordFile // ignore: cast_nullable_to_non_nullable
              as File?,
      signatureLesseFile: freezed == signatureLesseFile
          ? _value.signatureLesseFile
          : signatureLesseFile // ignore: cast_nullable_to_non_nullable
              as File?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContractStateImplCopyWith<$Res>
    implements $ContractStateCopyWith<$Res> {
  factory _$$ContractStateImplCopyWith(
          _$ContractStateImpl value, $Res Function(_$ContractStateImpl) then) =
      __$$ContractStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({File? signatureLandLordFile, File? signatureLesseFile});
}

/// @nodoc
class __$$ContractStateImplCopyWithImpl<$Res>
    extends _$ContractStateCopyWithImpl<$Res, _$ContractStateImpl>
    implements _$$ContractStateImplCopyWith<$Res> {
  __$$ContractStateImplCopyWithImpl(
      _$ContractStateImpl _value, $Res Function(_$ContractStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signatureLandLordFile = freezed,
    Object? signatureLesseFile = freezed,
  }) {
    return _then(_$ContractStateImpl(
      signatureLandLordFile: freezed == signatureLandLordFile
          ? _value.signatureLandLordFile
          : signatureLandLordFile // ignore: cast_nullable_to_non_nullable
              as File?,
      signatureLesseFile: freezed == signatureLesseFile
          ? _value.signatureLesseFile
          : signatureLesseFile // ignore: cast_nullable_to_non_nullable
              as File?,
    ));
  }
}

/// @nodoc

class _$ContractStateImpl extends _ContractState {
  const _$ContractStateImpl(
      {this.signatureLandLordFile, this.signatureLesseFile})
      : super._();

  @override
  final File? signatureLandLordFile;
  @override
  final File? signatureLesseFile;

  @override
  String toString() {
    return 'ContractState(signatureLandLordFile: $signatureLandLordFile, signatureLesseFile: $signatureLesseFile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContractStateImpl &&
            (identical(other.signatureLandLordFile, signatureLandLordFile) ||
                other.signatureLandLordFile == signatureLandLordFile) &&
            (identical(other.signatureLesseFile, signatureLesseFile) ||
                other.signatureLesseFile == signatureLesseFile));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, signatureLandLordFile, signatureLesseFile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContractStateImplCopyWith<_$ContractStateImpl> get copyWith =>
      __$$ContractStateImplCopyWithImpl<_$ContractStateImpl>(this, _$identity);
}

abstract class _ContractState extends ContractState {
  const factory _ContractState(
      {final File? signatureLandLordFile,
      final File? signatureLesseFile}) = _$ContractStateImpl;
  const _ContractState._() : super._();

  @override
  File? get signatureLandLordFile;
  @override
  File? get signatureLesseFile;
  @override
  @JsonKey(ignore: true)
  _$$ContractStateImplCopyWith<_$ContractStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
