// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_contract_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NewContractState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() failed,
    required TResult Function(int page, LandLordHouseData landLordHouseData)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? failed,
    TResult? Function(int page, LandLordHouseData landLordHouseData)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? failed,
    TResult Function(int page, LandLordHouseData landLordHouseData)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NewContractLoadingState value) loading,
    required TResult Function(_NewContractFailedState value) failed,
    required TResult Function(_NewContractLoadedState value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NewContractLoadingState value)? loading,
    TResult? Function(_NewContractFailedState value)? failed,
    TResult? Function(_NewContractLoadedState value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewContractLoadingState value)? loading,
    TResult Function(_NewContractFailedState value)? failed,
    TResult Function(_NewContractLoadedState value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewContractStateCopyWith<$Res> {
  factory $NewContractStateCopyWith(
          NewContractState value, $Res Function(NewContractState) then) =
      _$NewContractStateCopyWithImpl<$Res, NewContractState>;
}

/// @nodoc
class _$NewContractStateCopyWithImpl<$Res, $Val extends NewContractState>
    implements $NewContractStateCopyWith<$Res> {
  _$NewContractStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NewContractLoadingStateImplCopyWith<$Res> {
  factory _$$NewContractLoadingStateImplCopyWith(
          _$NewContractLoadingStateImpl value,
          $Res Function(_$NewContractLoadingStateImpl) then) =
      __$$NewContractLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NewContractLoadingStateImplCopyWithImpl<$Res>
    extends _$NewContractStateCopyWithImpl<$Res, _$NewContractLoadingStateImpl>
    implements _$$NewContractLoadingStateImplCopyWith<$Res> {
  __$$NewContractLoadingStateImplCopyWithImpl(
      _$NewContractLoadingStateImpl _value,
      $Res Function(_$NewContractLoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NewContractLoadingStateImpl implements _NewContractLoadingState {
  _$NewContractLoadingStateImpl();

  @override
  String toString() {
    return 'NewContractState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewContractLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() failed,
    required TResult Function(int page, LandLordHouseData landLordHouseData)
        loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? failed,
    TResult? Function(int page, LandLordHouseData landLordHouseData)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? failed,
    TResult Function(int page, LandLordHouseData landLordHouseData)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NewContractLoadingState value) loading,
    required TResult Function(_NewContractFailedState value) failed,
    required TResult Function(_NewContractLoadedState value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NewContractLoadingState value)? loading,
    TResult? Function(_NewContractFailedState value)? failed,
    TResult? Function(_NewContractLoadedState value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewContractLoadingState value)? loading,
    TResult Function(_NewContractFailedState value)? failed,
    TResult Function(_NewContractLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _NewContractLoadingState implements NewContractState {
  factory _NewContractLoadingState() = _$NewContractLoadingStateImpl;
}

/// @nodoc
abstract class _$$NewContractFailedStateImplCopyWith<$Res> {
  factory _$$NewContractFailedStateImplCopyWith(
          _$NewContractFailedStateImpl value,
          $Res Function(_$NewContractFailedStateImpl) then) =
      __$$NewContractFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NewContractFailedStateImplCopyWithImpl<$Res>
    extends _$NewContractStateCopyWithImpl<$Res, _$NewContractFailedStateImpl>
    implements _$$NewContractFailedStateImplCopyWith<$Res> {
  __$$NewContractFailedStateImplCopyWithImpl(
      _$NewContractFailedStateImpl _value,
      $Res Function(_$NewContractFailedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NewContractFailedStateImpl implements _NewContractFailedState {
  _$NewContractFailedStateImpl();

  @override
  String toString() {
    return 'NewContractState.failed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewContractFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() failed,
    required TResult Function(int page, LandLordHouseData landLordHouseData)
        loaded,
  }) {
    return failed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? failed,
    TResult? Function(int page, LandLordHouseData landLordHouseData)? loaded,
  }) {
    return failed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? failed,
    TResult Function(int page, LandLordHouseData landLordHouseData)? loaded,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NewContractLoadingState value) loading,
    required TResult Function(_NewContractFailedState value) failed,
    required TResult Function(_NewContractLoadedState value) loaded,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NewContractLoadingState value)? loading,
    TResult? Function(_NewContractFailedState value)? failed,
    TResult? Function(_NewContractLoadedState value)? loaded,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewContractLoadingState value)? loading,
    TResult Function(_NewContractFailedState value)? failed,
    TResult Function(_NewContractLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _NewContractFailedState implements NewContractState {
  factory _NewContractFailedState() = _$NewContractFailedStateImpl;
}

/// @nodoc
abstract class _$$NewContractLoadedStateImplCopyWith<$Res> {
  factory _$$NewContractLoadedStateImplCopyWith(
          _$NewContractLoadedStateImpl value,
          $Res Function(_$NewContractLoadedStateImpl) then) =
      __$$NewContractLoadedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int page, LandLordHouseData landLordHouseData});
}

/// @nodoc
class __$$NewContractLoadedStateImplCopyWithImpl<$Res>
    extends _$NewContractStateCopyWithImpl<$Res, _$NewContractLoadedStateImpl>
    implements _$$NewContractLoadedStateImplCopyWith<$Res> {
  __$$NewContractLoadedStateImplCopyWithImpl(
      _$NewContractLoadedStateImpl _value,
      $Res Function(_$NewContractLoadedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? landLordHouseData = null,
  }) {
    return _then(_$NewContractLoadedStateImpl(
      null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      null == landLordHouseData
          ? _value.landLordHouseData
          : landLordHouseData // ignore: cast_nullable_to_non_nullable
              as LandLordHouseData,
    ));
  }
}

/// @nodoc

class _$NewContractLoadedStateImpl implements _NewContractLoadedState {
  _$NewContractLoadedStateImpl(this.page, this.landLordHouseData);

  @override
  final int page;
  @override
  final LandLordHouseData landLordHouseData;

  @override
  String toString() {
    return 'NewContractState.loaded(page: $page, landLordHouseData: $landLordHouseData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewContractLoadedStateImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.landLordHouseData, landLordHouseData) ||
                other.landLordHouseData == landLordHouseData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page, landLordHouseData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewContractLoadedStateImplCopyWith<_$NewContractLoadedStateImpl>
      get copyWith => __$$NewContractLoadedStateImplCopyWithImpl<
          _$NewContractLoadedStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() failed,
    required TResult Function(int page, LandLordHouseData landLordHouseData)
        loaded,
  }) {
    return loaded(page, landLordHouseData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? failed,
    TResult? Function(int page, LandLordHouseData landLordHouseData)? loaded,
  }) {
    return loaded?.call(page, landLordHouseData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? failed,
    TResult Function(int page, LandLordHouseData landLordHouseData)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(page, landLordHouseData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NewContractLoadingState value) loading,
    required TResult Function(_NewContractFailedState value) failed,
    required TResult Function(_NewContractLoadedState value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NewContractLoadingState value)? loading,
    TResult? Function(_NewContractFailedState value)? failed,
    TResult? Function(_NewContractLoadedState value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewContractLoadingState value)? loading,
    TResult Function(_NewContractFailedState value)? failed,
    TResult Function(_NewContractLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _NewContractLoadedState implements NewContractState {
  factory _NewContractLoadedState(
          final int page, final LandLordHouseData landLordHouseData) =
      _$NewContractLoadedStateImpl;

  int get page;
  LandLordHouseData get landLordHouseData;
  @JsonKey(ignore: true)
  _$$NewContractLoadedStateImplCopyWith<_$NewContractLoadedStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
