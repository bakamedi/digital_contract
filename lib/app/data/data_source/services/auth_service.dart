import '../../../core/either.dart';
import '../../../domain/failures/sign_in_failure.dart';
import '../../../domain/models/auth/token_model.dart';
import '../../http_helper.dart';
import '../../http_method.dart';

import 'dart:developer' as developer;

class AuthService {
  final HttpHelper _http;

  AuthService({required HttpHelper http}) : _http = http;

  Future<Either<SignInFailure, TokenModel>> login({
    required String email,
    required String password,
  }) async {
    final result = await _http.request(
      '/v1/api/user/login',
      method: HttpMethod.POST,
      data: {
        "email": email,
        "password": password,
      },
    );

    return result.when(
      success: (statusCode, data) {
        developer.log(data, name: 'login-success');
        final user = tokenModelFromJson(data);
        return Either.right(user);
      },
      networkError: (stackTrace) {
        developer.log(stackTrace.toString(), name: 'login-networkError');
        return const Either.left(
          SignInFailure.network(),
        );
      },
      unhandledError: (exception, stackTrace) {
        developer.log(stackTrace.toString(), name: 'login-unhandledError');

        return const Either.left(
          SignInFailure.unhandledException(),
        );
      },
    );
  }
}
