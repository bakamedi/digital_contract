import 'package:flutter_meedu/notifiers.dart';
import 'package:flutter_meedu/providers.dart';

import '../../../core/either.dart';
import '../../../dependency_injection.dart.dart';
import '../../../domain/models/user_model.dart';
import '../../../domain/repositories/auth_repository.dart';

final sessionProvider = StateNotifierProvider<SessionController, UserModel?>(
  (ref) => SessionController(
    null,
    authRepository: Repositories.auth.read(),
  ),
  autoDispose: false,
);

class SessionController extends StateNotifier<UserModel?> {
  SessionController(
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

  void logOut() {
    state = null;
  }
}
