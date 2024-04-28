import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_success.freezed.dart';

@freezed
class SignInSuccess with _$SignInSuccess {
  const factory SignInSuccess.created() = _UserNotFound;
  const factory SignInSuccess.ok() = _Network;
}
