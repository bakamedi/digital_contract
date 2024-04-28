import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'signature_state.freezed.dart';

@freezed
class SignatureState with _$SignatureState {
  const SignatureState._();
  const factory SignatureState({
    File? signatureFile,
  }) = _SignatureState;
  static SignatureState get initialState => const SignatureState();
}
