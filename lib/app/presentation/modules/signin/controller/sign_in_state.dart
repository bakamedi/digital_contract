import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_state.freezed.dart';

@freezed
class SignInState with _$SignInState {
  const SignInState._();
  const factory SignInState({
    @Default('') String email,
    @Default('') String password,
    @Default(true) bool obscurePassword,
    GlobalKey<FormState>? formKey,
  }) = _SignInState;
  static SignInState get initialState => SignInState(
        formKey: GlobalKey<FormState>(),
      );
}
