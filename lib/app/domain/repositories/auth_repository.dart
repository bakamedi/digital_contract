import '../failures/sign_in_failure.dart';
import '../models/user_model.dart';
import '../success/sign_in_success.dart';
import '../typedefs.dart';

abstract class AuthRepository {
  FutureEither<SignInFailure, SignInSuccess> signIn(
    String email,
    String password,
  );
  FutureEither<SignInFailure, UserModel> signUp(
    UserModel user,
    String password,
  );
  FutureEither<SignInFailure, void> sendResetPasswordEmail(
    String email,
  );
  Future<void> signOut();
  FutureEither<SignInFailure, String> getOtp(
    String phone,
  );
  FutureEither<SignInFailure, String> validateOtp(
    String otp,
  );
}
