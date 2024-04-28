// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bill_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BillState {
  dynamic get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BillStateCopyWith<BillState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BillStateCopyWith<$Res> {
  factory $BillStateCopyWith(BillState value, $Res Function(BillState) then) =
      _$BillStateCopyWithImpl<$Res, BillState>;
  @useResult
  $Res call({dynamic name});
}

/// @nodoc
class _$BillStateCopyWithImpl<$Res, $Val extends BillState>
    implements $BillStateCopyWith<$Res> {
  _$BillStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BillStateImplCopyWith<$Res>
    implements $BillStateCopyWith<$Res> {
  factory _$$BillStateImplCopyWith(
          _$BillStateImpl value, $Res Function(_$BillStateImpl) then) =
      __$$BillStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic name});
}

/// @nodoc
class __$$BillStateImplCopyWithImpl<$Res>
    extends _$BillStateCopyWithImpl<$Res, _$BillStateImpl>
    implements _$$BillStateImplCopyWith<$Res> {
  __$$BillStateImplCopyWithImpl(
      _$BillStateImpl _value, $Res Function(_$BillStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_$BillStateImpl(
      name: freezed == name ? _value.name! : name,
    ));
  }
}

/// @nodoc

class _$BillStateImpl extends _BillState {
  const _$BillStateImpl({this.name = ''}) : super._();

  @override
  @JsonKey()
  final dynamic name;

  @override
  String toString() {
    return 'BillState(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BillStateImpl &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BillStateImplCopyWith<_$BillStateImpl> get copyWith =>
      __$$BillStateImplCopyWithImpl<_$BillStateImpl>(this, _$identity);
}

abstract class _BillState extends BillState {
  const factory _BillState({final dynamic name}) = _$BillStateImpl;
  const _BillState._() : super._();

  @override
  dynamic get name;
  @override
  @JsonKey(ignore: true)
  _$$BillStateImplCopyWith<_$BillStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
