import 'package:flutter_meedu/notifiers.dart';
import 'package:flutter_meedu/providers.dart';

import '../../../core/either.dart';
import '../../../dependency_injection.dart.dart';
import '../../../domain/models/user/user_model.dart';
import '../../../domain/repositories/auth_repository.dart';

final sessionGlobalProvider =
    StateNotifierProvider<SessionGlobalController, UserModel?>(
  (ref) => SessionGlobalController(
    null,
    authRepository: Repositories.auth.read(),
  ),
  autoDispose: false,
);

class SessionGlobalController extends StateNotifier<UserModel?> {
  SessionGlobalController(
    super.initialState, {
    required AuthRepository authRepository,
  }) : _authRepository = authRepository;

  final AuthRepository _authRepository;

  Future<void> signIn() async {
    final result = await _authRepository.signIn(
      '',
      '',
    );

    switch (result) {
      case Right(value: final user):
        state = user;
      case Left _:
    }
  }

  Future<String> get id async => await _authRepository.id;
  Future<String> get fullName async => await _authRepository.fullName;
  Future<String> get nui async => await _authRepository.nui;
  Future<String> get email async => await _authRepository.email;
  Future<String> get phone async => await _authRepository.phone;
  Future<String> get userType async => await _authRepository.userType;
  Future<String> get token async => await _authRepository.token;

  void logOut() {
    state = null;
  }
}
