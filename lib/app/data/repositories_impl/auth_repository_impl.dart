import '../../domain/either.dart';
import '../../domain/failures/sign_in_failure.dart';
import '../../domain/models/user/user_model.dart';
import '../../domain/repositories/auth_repository.dart';
import '../../domain/success/sign_in_success.dart';
import '../../domain/typedefs.dart';
import '../data_source/services/auth_service.dart';

import 'dart:developer' as developer;

import '../helpers/device_util_helper.dart';

class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl({
    required AuthService authService,
    required DeviceUtilHelper deviceUtilHelper,
  })  : _authService = authService,
        _deviceUtilHelper = deviceUtilHelper;

  final AuthService _authService;
  final DeviceUtilHelper _deviceUtilHelper;

  @override
  Future<void> signOut() async {}

  @override
  FutureEither<SignInFailure, SignInSuccess> signIn(
    String email,
    String password,
  ) async {
    try {
      final result = await _authService.login(
        email: email,
        password: password,
      );

      return result.when(
        left: (failure) => Either.left(failure),
        right: (token) async {
          await _deviceUtilHelper.saveUserData(token);
          return const Either.right(
            SignInSuccess.ok(),
          );
        },
      );
    } catch (e) {
      developer.log(e.toString(), name: 'signIn');

      return const Either.left(
        SignInFailure.unhandledException(),
      );
    }
  }

  @override
  FutureEither<SignInFailure, UserModel> signUp(
    UserModel user,
    String password,
  ) async {
    try {
      return const Either.left(
        SignInFailure.unhandledException(),
      );
    } catch (e) {
      return const Either.left(
        SignInFailure.unhandledException(),
      );
    }
  }

  @override
  FutureEither<SignInFailure, void> sendResetPasswordEmail(
    String email,
  ) async {
    try {
      return const Either.left(
        SignInFailure.unhandledException(),
      );
    } catch (e) {
      return const Either.left(
        SignInFailure.unhandledException(),
      );
    }
  }

  @override
  FutureEither<SignInFailure, String> getOtp(String phone) {
    // TODO: implement getOtp
    throw UnimplementedError();
  }

  @override
  FutureEither<SignInFailure, String> validateOtp(String otp) {
    // TODO: implement validateOtp
    throw UnimplementedError();
  }

  @override
  Future<String> get email async => await _deviceUtilHelper.email;

  @override
  Future<String> get fullName async => await _deviceUtilHelper.fullname;

  @override
  Future<String> get id async => await _deviceUtilHelper.id;

  @override
  Future<String> get nui async => await _deviceUtilHelper.nui;

  @override
  Future<String> get phone async => await _deviceUtilHelper.phone;

  @override
  Future<String> get token async => await _deviceUtilHelper.token;

  @override
  Future<String> get userType async => await _deviceUtilHelper.userType;
}
