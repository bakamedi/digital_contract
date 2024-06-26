// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'loader_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoaderState {
  bool get loading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoaderStateCopyWith<LoaderState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoaderStateCopyWith<$Res> {
  factory $LoaderStateCopyWith(
          LoaderState value, $Res Function(LoaderState) then) =
      _$LoaderStateCopyWithImpl<$Res, LoaderState>;
  @useResult
  $Res call({bool loading});
}

/// @nodoc
class _$LoaderStateCopyWithImpl<$Res, $Val extends LoaderState>
    implements $LoaderStateCopyWith<$Res> {
  _$LoaderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
  }) {
    return _then(_value.copyWith(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoaderStateImplCopyWith<$Res>
    implements $LoaderStateCopyWith<$Res> {
  factory _$$LoaderStateImplCopyWith(
          _$LoaderStateImpl value, $Res Function(_$LoaderStateImpl) then) =
      __$$LoaderStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool loading});
}

/// @nodoc
class __$$LoaderStateImplCopyWithImpl<$Res>
    extends _$LoaderStateCopyWithImpl<$Res, _$LoaderStateImpl>
    implements _$$LoaderStateImplCopyWith<$Res> {
  __$$LoaderStateImplCopyWithImpl(
      _$LoaderStateImpl _value, $Res Function(_$LoaderStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
  }) {
    return _then(_$LoaderStateImpl(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoaderStateImpl extends _LoaderState {
  const _$LoaderStateImpl({this.loading = false}) : super._();

  @override
  @JsonKey()
  final bool loading;

  @override
  String toString() {
    return 'LoaderState(loading: $loading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoaderStateImpl &&
            (identical(other.loading, loading) || other.loading == loading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoaderStateImplCopyWith<_$LoaderStateImpl> get copyWith =>
      __$$LoaderStateImplCopyWithImpl<_$LoaderStateImpl>(this, _$identity);
}

abstract class _LoaderState extends LoaderState {
  const factory _LoaderState({final bool loading}) = _$LoaderStateImpl;
  const _LoaderState._() : super._();

  @override
  bool get loading;
  @override
  @JsonKey(ignore: true)
  _$$LoaderStateImplCopyWith<_$LoaderStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
