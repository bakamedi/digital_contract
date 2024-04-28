import 'dart:io';

import 'package:flutter_meedu/notifiers.dart';
import 'package:flutter_meedu/providers.dart';

import '../../../../../../dependency_injection.dart.dart';
import '../../../../../../domain/repositories/device_utils_repository.dart';

import 'profile_state.dart';

final profileProvider = Provider.state<ProfileController, ProfileState>(
  (_) => ProfileController(
    ProfileState.initialState,
    deviceUtilsRepository: Repositories.deviceUtil.read(),
  ),
);

class ProfileController extends StateNotifier<ProfileState> {
  final DeviceUtilsRepository _deviceUtilsRepository;

  ProfileController(
    super.initialState, {
    required DeviceUtilsRepository deviceUtilsRepository,
  }) : _deviceUtilsRepository = deviceUtilsRepository;

  File get signatureFile => state.signatureFile ?? File('file.txt');

  Future<void> loadSignatureFile() async {
    if (state.signatureFile == null) {
      final signatureFile = await _deviceUtilsRepository.getFile(
        'my_signature',
      );
      state = state.copyWith(
        signatureFile: signatureFile,
      );
    }
  }
}
