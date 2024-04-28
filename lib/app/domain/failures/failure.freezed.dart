// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Failure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() network,
    required TResult Function() unathorized,
    required TResult Function() unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? network,
    TResult? Function()? unathorized,
    TResult? Function()? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? network,
    TResult Function()? unathorized,
    TResult Function()? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkFailure value) network,
    required TResult Function(UnathorizedFailure value) unathorized,
    required TResult Function(UnknownFailure value) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkFailure value)? network,
    TResult? Function(UnathorizedFailure value)? unathorized,
    TResult? Function(UnknownFailure value)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkFailure value)? network,
    TResult Function(UnathorizedFailure value)? unathorized,
    TResult Function(UnknownFailure value)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res, Failure>;
}

/// @nodoc
class _$FailureCopyWithImpl<$Res, $Val extends Failure>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NetworkFailureImplCopyWith<$Res> {
  factory _$$NetworkFailureImplCopyWith(_$NetworkFailureImpl value,
          $Res Function(_$NetworkFailureImpl) then) =
      __$$NetworkFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NetworkFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$NetworkFailureImpl>
    implements _$$NetworkFailureImplCopyWith<$Res> {
  __$$NetworkFailureImplCopyWithImpl(
      _$NetworkFailureImpl _value, $Res Function(_$NetworkFailureImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NetworkFailureImpl implements NetworkFailure {
  const _$NetworkFailureImpl();

  @override
  String toString() {
    return 'Failure.network()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NetworkFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() network,
    required TResult Function() unathorized,
    required TResult Function() unknown,
  }) {
    return network();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? network,
    TResult? Function()? unathorized,
    TResult? Function()? unknown,
  }) {
    return network?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? network,
    TResult Function()? unathorized,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (network != null) {
      return network();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkFailure value) network,
    required TResult Function(UnathorizedFailure value) unathorized,
    required TResult Function(UnknownFailure value) unknown,
  }) {
    return network(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkFailure value)? network,
    TResult? Function(UnathorizedFailure value)? unathorized,
    TResult? Function(UnknownFailure value)? unknown,
  }) {
    return network?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkFailure value)? network,
    TResult Function(UnathorizedFailure value)? unathorized,
    TResult Function(UnknownFailure value)? unknown,
    required TResult orElse(),
  }) {
    if (network != null) {
      return network(this);
    }
    return orElse();
  }
}

abstract class NetworkFailure implements Failure {
  const factory NetworkFailure() = _$NetworkFailureImpl;
}

/// @nodoc
abstract class _$$UnathorizedFailureImplCopyWith<$Res> {
  factory _$$UnathorizedFailureImplCopyWith(_$UnathorizedFailureImpl value,
          $Res Function(_$UnathorizedFailureImpl) then) =
      __$$UnathorizedFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnathorizedFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$UnathorizedFailureImpl>
    implements _$$UnathorizedFailureImplCopyWith<$Res> {
  __$$UnathorizedFailureImplCopyWithImpl(_$UnathorizedFailureImpl _value,
      $Res Function(_$UnathorizedFailureImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UnathorizedFailureImpl implements UnathorizedFailure {
  const _$UnathorizedFailureImpl();

  @override
  String toString() {
    return 'Failure.unathorized()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnathorizedFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() network,
    required TResult Function() unathorized,
    required TResult Function() unknown,
  }) {
    return unathorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? network,
    TResult? Function()? unathorized,
    TResult? Function()? unknown,
  }) {
    return unathorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? network,
    TResult Function()? unathorized,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (unathorized != null) {
      return unathorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkFailure value) network,
    required TResult Function(UnathorizedFailure value) unathorized,
    required TResult Function(UnknownFailure value) unknown,
  }) {
    return unathorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkFailure value)? network,
    TResult? Function(UnathorizedFailure value)? unathorized,
    TResult? Function(UnknownFailure value)? unknown,
  }) {
    return unathorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkFailure value)? network,
    TResult Function(UnathorizedFailure value)? unathorized,
    TResult Function(UnknownFailure value)? unknown,
    required TResult orElse(),
  }) {
    if (unathorized != null) {
      return unathorized(this);
    }
    return orElse();
  }
}

abstract class UnathorizedFailure implements Failure {
  const factory UnathorizedFailure() = _$UnathorizedFailureImpl;
}

/// @nodoc
abstract class _$$UnknownFailureImplCopyWith<$Res> {
  factory _$$UnknownFailureImplCopyWith(_$UnknownFailureImpl value,
          $Res Function(_$UnknownFailureImpl) then) =
      __$$UnknownFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnknownFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$UnknownFailureImpl>
    implements _$$UnknownFailureImplCopyWith<$Res> {
  __$$UnknownFailureImplCopyWithImpl(
      _$UnknownFailureImpl _value, $Res Function(_$UnknownFailureImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UnknownFailureImpl implements UnknownFailure {
  const _$UnknownFailureImpl();

  @override
  String toString() {
    return 'Failure.unknown()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnknownFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() network,
    required TResult Function() unathorized,
    required TResult Function() unknown,
  }) {
    return unknown();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? network,
    TResult? Function()? unathorized,
    TResult? Function()? unknown,
  }) {
    return unknown?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? network,
    TResult Function()? unathorized,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkFailure value) network,
    required TResult Function(UnathorizedFailure value) unathorized,
    required TResult Function(UnknownFailure value) unknown,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkFailure value)? network,
    TResult? Function(UnathorizedFailure value)? unathorized,
    TResult? Function(UnknownFailure value)? unknown,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkFailure value)? network,
    TResult Function(UnathorizedFailure value)? unathorized,
    TResult Function(UnknownFailure value)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class UnknownFailure implements Failure {
  const factory UnknownFailure() = _$UnknownFailureImpl;
}
