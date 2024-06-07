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
  List<bool> get services => throw _privateConstructorUsedError;
  PageController? get stepperContractController =>
      throw _privateConstructorUsedError;
  String get nextDoneTxt => throw _privateConstructorUsedError;
  List<XFile> get galleryImages => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewContractStateCopyWith<NewContractState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewContractStateCopyWith<$Res> {
  factory $NewContractStateCopyWith(
          NewContractState value, $Res Function(NewContractState) then) =
      _$NewContractStateCopyWithImpl<$Res, NewContractState>;
  @useResult
  $Res call(
      {List<bool> services,
      PageController? stepperContractController,
      String nextDoneTxt,
      List<XFile> galleryImages});
}

/// @nodoc
class _$NewContractStateCopyWithImpl<$Res, $Val extends NewContractState>
    implements $NewContractStateCopyWith<$Res> {
  _$NewContractStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? services = null,
    Object? stepperContractController = freezed,
    Object? nextDoneTxt = null,
    Object? galleryImages = null,
  }) {
    return _then(_value.copyWith(
      services: null == services
          ? _value.services
          : services // ignore: cast_nullable_to_non_nullable
              as List<bool>,
      stepperContractController: freezed == stepperContractController
          ? _value.stepperContractController
          : stepperContractController // ignore: cast_nullable_to_non_nullable
              as PageController?,
      nextDoneTxt: null == nextDoneTxt
          ? _value.nextDoneTxt
          : nextDoneTxt // ignore: cast_nullable_to_non_nullable
              as String,
      galleryImages: null == galleryImages
          ? _value.galleryImages
          : galleryImages // ignore: cast_nullable_to_non_nullable
              as List<XFile>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewContractStateImplCopyWith<$Res>
    implements $NewContractStateCopyWith<$Res> {
  factory _$$NewContractStateImplCopyWith(_$NewContractStateImpl value,
          $Res Function(_$NewContractStateImpl) then) =
      __$$NewContractStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<bool> services,
      PageController? stepperContractController,
      String nextDoneTxt,
      List<XFile> galleryImages});
}

/// @nodoc
class __$$NewContractStateImplCopyWithImpl<$Res>
    extends _$NewContractStateCopyWithImpl<$Res, _$NewContractStateImpl>
    implements _$$NewContractStateImplCopyWith<$Res> {
  __$$NewContractStateImplCopyWithImpl(_$NewContractStateImpl _value,
      $Res Function(_$NewContractStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? services = null,
    Object? stepperContractController = freezed,
    Object? nextDoneTxt = null,
    Object? galleryImages = null,
  }) {
    return _then(_$NewContractStateImpl(
      services: null == services
          ? _value._services
          : services // ignore: cast_nullable_to_non_nullable
              as List<bool>,
      stepperContractController: freezed == stepperContractController
          ? _value.stepperContractController
          : stepperContractController // ignore: cast_nullable_to_non_nullable
              as PageController?,
      nextDoneTxt: null == nextDoneTxt
          ? _value.nextDoneTxt
          : nextDoneTxt // ignore: cast_nullable_to_non_nullable
              as String,
      galleryImages: null == galleryImages
          ? _value._galleryImages
          : galleryImages // ignore: cast_nullable_to_non_nullable
              as List<XFile>,
    ));
  }
}

/// @nodoc

class _$NewContractStateImpl extends _NewContractState {
  const _$NewContractStateImpl(
      {final List<bool> services = const [true, false, false],
      this.stepperContractController,
      this.nextDoneTxt = 'Siguiente',
      final List<XFile> galleryImages = const []})
      : _services = services,
        _galleryImages = galleryImages,
        super._();

  final List<bool> _services;
  @override
  @JsonKey()
  List<bool> get services {
    if (_services is EqualUnmodifiableListView) return _services;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_services);
  }

  @override
  final PageController? stepperContractController;
  @override
  @JsonKey()
  final String nextDoneTxt;
  final List<XFile> _galleryImages;
  @override
  @JsonKey()
  List<XFile> get galleryImages {
    if (_galleryImages is EqualUnmodifiableListView) return _galleryImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_galleryImages);
  }

  @override
  String toString() {
    return 'NewContractState(services: $services, stepperContractController: $stepperContractController, nextDoneTxt: $nextDoneTxt, galleryImages: $galleryImages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewContractStateImpl &&
            const DeepCollectionEquality().equals(other._services, _services) &&
            (identical(other.stepperContractController,
                    stepperContractController) ||
                other.stepperContractController == stepperContractController) &&
            (identical(other.nextDoneTxt, nextDoneTxt) ||
                other.nextDoneTxt == nextDoneTxt) &&
            const DeepCollectionEquality()
                .equals(other._galleryImages, _galleryImages));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_services),
      stepperContractController,
      nextDoneTxt,
      const DeepCollectionEquality().hash(_galleryImages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewContractStateImplCopyWith<_$NewContractStateImpl> get copyWith =>
      __$$NewContractStateImplCopyWithImpl<_$NewContractStateImpl>(
          this, _$identity);
}

abstract class _NewContractState extends NewContractState {
  const factory _NewContractState(
      {final List<bool> services,
      final PageController? stepperContractController,
      final String nextDoneTxt,
      final List<XFile> galleryImages}) = _$NewContractStateImpl;
  const _NewContractState._() : super._();

  @override
  List<bool> get services;
  @override
  PageController? get stepperContractController;
  @override
  String get nextDoneTxt;
  @override
  List<XFile> get galleryImages;
  @override
  @JsonKey(ignore: true)
  _$$NewContractStateImplCopyWith<_$NewContractStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
