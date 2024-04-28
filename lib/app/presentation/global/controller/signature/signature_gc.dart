import 'dart:io';

import 'package:flutter_meedu/notifiers.dart';
import 'package:flutter_meedu/providers.dart';

import '../../../../dependency_injection.dart.dart';
import '../../../../domain/repositories/device_utils_repository.dart';
import 'signature_state.dart';

final signatureGlobalProvider = Provider.state<SignatureGC, SignatureState>(
  (_) => SignatureGC(
    SignatureState.initialState,
    deviceUtilsRepository: Repositories.deviceUtil.read(),
  ),
);

class SignatureGC extends StateNotifier<SignatureState> {
  final DeviceUtilsRepository _deviceUtilsRepository;

  SignatureGC(
    super.initialState, {
    required DeviceUtilsRepository deviceUtilsRepository,
  }) : _deviceUtilsRepository = deviceUtilsRepository;

  File get signatureFile => state.signatureFile ?? File('file.txt');

  Future<void> loadSignatureFile({required String fileName}) async {
    if (state.signatureFile == null) {
      final signaturePath = await _deviceUtilsRepository.getImagePath(
        fileName,
      );
      final signatureFile = File(signaturePath);
      state = state.copyWith(
        signatureFile: signatureFile,
      );
    }
  }
}
