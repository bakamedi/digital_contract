import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'splash_state.freezed.dart';

@freezed
class SplashState with _$SplashState {
  // ignore: unused_element
  const SplashState._();
  const factory SplashState({
    BuildContext? context,
  }) = _SplashState;

  static SplashState get initialState => const SplashState();
}
