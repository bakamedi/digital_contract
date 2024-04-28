import 'package:flutter/material.dart';
import 'package:flutter_meedu/notifiers.dart';
import 'package:flutter_meedu/providers.dart';

import '../../../../dependency_injection.dart.dart';
import '../../../../domain/failures/sign_in_failure.dart';
import '../../../../domain/repositories/auth_repository.dart';
import '../../../../domain/success/sign_in_success.dart';
import '../../../../domain/typedefs.dart';
import 'sign_in_state.dart';

final signInProvider = Provider.state<SignInController, SignInState>(
  (_) => SignInController(
    SignInState.initialState,
    authRepository: Repositories.auth.read(),
  ),
);

class SignInController extends StateNotifier<SignInState> {
  final AuthRepository _authRepository;

  SignInController(
    super.initialState, {
    required AuthRepository authRepository,
  }) : _authRepository = authRepository;

  String get email => state.email;

  bool get obscurePassword => state.obscurePassword;

  GlobalKey<FormState>? get formKey => state.formKey;

  FutureEither<SignInFailure, SignInSuccess> login() async {
    return await _authRepository.signIn(
      state.email,
      state.password,
    );
  }

  void onChangeEmail(String email) {
    onlyUpdate(
      state = state.copyWith(
        email: email,
      ),
    );
  }

  void onChangePassword(String password) {
    onlyUpdate(
      state = state.copyWith(
        password: password,
      ),
    );
  }

  void changeVisiblePassword() {
    onlyUpdate(
      state = state.copyWith(
        obscurePassword: !obscurePassword,
      ),
    );
  }
}
