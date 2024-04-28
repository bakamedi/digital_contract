// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'http_helper.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RequestResult<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int statusCode, T data) success,
    required TResult Function(StackTrace stackTrace) networkError,
    required TResult Function(Object exception, StackTrace stackTrace)
        unhandledError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int statusCode, T data)? success,
    TResult? Function(StackTrace stackTrace)? networkError,
    TResult? Function(Object exception, StackTrace stackTrace)? unhandledError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int statusCode, T data)? success,
    TResult Function(StackTrace stackTrace)? networkError,
    TResult Function(Object exception, StackTrace stackTrace)? unhandledError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Success<T> value) success,
    required TResult Function(_NetworkError<T> value) networkError,
    required TResult Function(_UnhandledException<T> value) unhandledError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Success<T> value)? success,
    TResult? Function(_NetworkError<T> value)? networkError,
    TResult? Function(_UnhandledException<T> value)? unhandledError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Success<T> value)? success,
    TResult Function(_NetworkError<T> value)? networkError,
    TResult Function(_UnhandledException<T> value)? unhandledError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestResultCopyWith<T, $Res> {
  factory $RequestResultCopyWith(
          RequestResult<T> value, $Res Function(RequestResult<T>) then) =
      _$RequestResultCopyWithImpl<T, $Res, RequestResult<T>>;
}

/// @nodoc
class _$RequestResultCopyWithImpl<T, $Res, $Val extends RequestResult<T>>
    implements $RequestResultCopyWith<T, $Res> {
  _$RequestResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<T, $Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl<T> value, $Res Function(_$SuccessImpl<T>) then) =
      __$$SuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({int statusCode, T data});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<T, $Res>
    extends _$RequestResultCopyWithImpl<T, $Res, _$SuccessImpl<T>>
    implements _$$SuccessImplCopyWith<T, $Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl<T> _value, $Res Function(_$SuccessImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = null,
    Object? data = freezed,
  }) {
    return _then(_$SuccessImpl<T>(
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$SuccessImpl<T> implements _Success<T> {
  _$SuccessImpl({required this.statusCode, required this.data});

  @override
  final int statusCode;
  @override
  final T data;

  @override
  String toString() {
    return 'RequestResult<$T>.success(statusCode: $statusCode, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl<T> &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, statusCode, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<T, _$SuccessImpl<T>> get copyWith =>
      __$$SuccessImplCopyWithImpl<T, _$SuccessImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int statusCode, T data) success,
    required TResult Function(StackTrace stackTrace) networkError,
    required TResult Function(Object exception, StackTrace stackTrace)
        unhandledError,
  }) {
    return success(statusCode, data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int statusCode, T data)? success,
    TResult? Function(StackTrace stackTrace)? networkError,
    TResult? Function(Object exception, StackTrace stackTrace)? unhandledError,
  }) {
    return success?.call(statusCode, data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int statusCode, T data)? success,
    TResult Function(StackTrace stackTrace)? networkError,
    TResult Function(Object exception, StackTrace stackTrace)? unhandledError,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(statusCode, data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Success<T> value) success,
    required TResult Function(_NetworkError<T> value) networkError,
    required TResult Function(_UnhandledException<T> value) unhandledError,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Success<T> value)? success,
    TResult? Function(_NetworkError<T> value)? networkError,
    TResult? Function(_UnhandledException<T> value)? unhandledError,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Success<T> value)? success,
    TResult Function(_NetworkError<T> value)? networkError,
    TResult Function(_UnhandledException<T> value)? unhandledError,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success<T> implements RequestResult<T> {
  factory _Success({required final int statusCode, required final T data}) =
      _$SuccessImpl<T>;

  int get statusCode;
  T get data;
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<T, _$SuccessImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NetworkErrorImplCopyWith<T, $Res> {
  factory _$$NetworkErrorImplCopyWith(_$NetworkErrorImpl<T> value,
          $Res Function(_$NetworkErrorImpl<T>) then) =
      __$$NetworkErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({StackTrace stackTrace});
}

/// @nodoc
class __$$NetworkErrorImplCopyWithImpl<T, $Res>
    extends _$RequestResultCopyWithImpl<T, $Res, _$NetworkErrorImpl<T>>
    implements _$$NetworkErrorImplCopyWith<T, $Res> {
  __$$NetworkErrorImplCopyWithImpl(
      _$NetworkErrorImpl<T> _value, $Res Function(_$NetworkErrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stackTrace = null,
  }) {
    return _then(_$NetworkErrorImpl<T>(
      stackTrace: null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$NetworkErrorImpl<T> implements _NetworkError<T> {
  _$NetworkErrorImpl({required this.stackTrace});

  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'RequestResult<$T>.networkError(stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkErrorImpl<T> &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NetworkErrorImplCopyWith<T, _$NetworkErrorImpl<T>> get copyWith =>
      __$$NetworkErrorImplCopyWithImpl<T, _$NetworkErrorImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int statusCode, T data) success,
    required TResult Function(StackTrace stackTrace) networkError,
    required TResult Function(Object exception, StackTrace stackTrace)
        unhandledError,
  }) {
    return networkError(stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int statusCode, T data)? success,
    TResult? Function(StackTrace stackTrace)? networkError,
    TResult? Function(Object exception, StackTrace stackTrace)? unhandledError,
  }) {
    return networkError?.call(stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int statusCode, T data)? success,
    TResult Function(StackTrace stackTrace)? networkError,
    TResult Function(Object exception, StackTrace stackTrace)? unhandledError,
    required TResult orElse(),
  }) {
    if (networkError != null) {
      return networkError(stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Success<T> value) success,
    required TResult Function(_NetworkError<T> value) networkError,
    required TResult Function(_UnhandledException<T> value) unhandledError,
  }) {
    return networkError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Success<T> value)? success,
    TResult? Function(_NetworkError<T> value)? networkError,
    TResult? Function(_UnhandledException<T> value)? unhandledError,
  }) {
    return networkError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Success<T> value)? success,
    TResult Function(_NetworkError<T> value)? networkError,
    TResult Function(_UnhandledException<T> value)? unhandledError,
    required TResult orElse(),
  }) {
    if (networkError != null) {
      return networkError(this);
    }
    return orElse();
  }
}

abstract class _NetworkError<T> implements RequestResult<T> {
  factory _NetworkError({required final StackTrace stackTrace}) =
      _$NetworkErrorImpl<T>;

  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$NetworkErrorImplCopyWith<T, _$NetworkErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnhandledExceptionImplCopyWith<T, $Res> {
  factory _$$UnhandledExceptionImplCopyWith(_$UnhandledExceptionImpl<T> value,
          $Res Function(_$UnhandledExceptionImpl<T>) then) =
      __$$UnhandledExceptionImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({Object exception, StackTrace stackTrace});
}

/// @nodoc
class __$$UnhandledExceptionImplCopyWithImpl<T, $Res>
    extends _$RequestResultCopyWithImpl<T, $Res, _$UnhandledExceptionImpl<T>>
    implements _$$UnhandledExceptionImplCopyWith<T, $Res> {
  __$$UnhandledExceptionImplCopyWithImpl(_$UnhandledExceptionImpl<T> _value,
      $Res Function(_$UnhandledExceptionImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exception = null,
    Object? stackTrace = null,
  }) {
    return _then(_$UnhandledExceptionImpl<T>(
      exception: null == exception ? _value.exception : exception,
      stackTrace: null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$UnhandledExceptionImpl<T> implements _UnhandledException<T> {
  _$UnhandledExceptionImpl({required this.exception, required this.stackTrace});

  @override
  final Object exception;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'RequestResult<$T>.unhandledError(exception: $exception, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnhandledExceptionImpl<T> &&
            const DeepCollectionEquality().equals(other.exception, exception) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(exception), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnhandledExceptionImplCopyWith<T, _$UnhandledExceptionImpl<T>>
      get copyWith => __$$UnhandledExceptionImplCopyWithImpl<T,
          _$UnhandledExceptionImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int statusCode, T data) success,
    required TResult Function(StackTrace stackTrace) networkError,
    required TResult Function(Object exception, StackTrace stackTrace)
        unhandledError,
  }) {
    return unhandledError(exception, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int statusCode, T data)? success,
    TResult? Function(StackTrace stackTrace)? networkError,
    TResult? Function(Object exception, StackTrace stackTrace)? unhandledError,
  }) {
    return unhandledError?.call(exception, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int statusCode, T data)? success,
    TResult Function(StackTrace stackTrace)? networkError,
    TResult Function(Object exception, StackTrace stackTrace)? unhandledError,
    required TResult orElse(),
  }) {
    if (unhandledError != null) {
      return unhandledError(exception, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Success<T> value) success,
    required TResult Function(_NetworkError<T> value) networkError,
    required TResult Function(_UnhandledException<T> value) unhandledError,
  }) {
    return unhandledError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Success<T> value)? success,
    TResult? Function(_NetworkError<T> value)? networkError,
    TResult? Function(_UnhandledException<T> value)? unhandledError,
  }) {
    return unhandledError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Success<T> value)? success,
    TResult Function(_NetworkError<T> value)? networkError,
    TResult Function(_UnhandledException<T> value)? unhandledError,
    required TResult orElse(),
  }) {
    if (unhandledError != null) {
      return unhandledError(this);
    }
    return orElse();
  }
}

abstract class _UnhandledException<T> implements RequestResult<T> {
  factory _UnhandledException(
      {required final Object exception,
      required final StackTrace stackTrace}) = _$UnhandledExceptionImpl<T>;

  Object get exception;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$UnhandledExceptionImplCopyWith<T, _$UnhandledExceptionImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
