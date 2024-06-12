import '../failures/sign_in_failure.dart';
import '../models/user/user_model.dart';
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

  Future<String> get id;
  Future<String> get fullName;
  Future<String> get nui;
  Future<String> get email;
  Future<String> get phone;
  Future<String> get userType;
  Future<String> get token;
}
