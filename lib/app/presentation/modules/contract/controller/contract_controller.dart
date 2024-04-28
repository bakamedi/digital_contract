import 'dart:io';

import 'package:flutter_meedu/notifiers.dart';
import 'package:flutter_meedu/providers.dart';

import '../../../../dependency_injection.dart.dart';
import '../../../../domain/repositories/device_utils_repository.dart';
import 'contract_state.dart';

final contractProvider = Provider.state<ContractController, ContractState>(
  (_) => ContractController(
    ContractState.initialState,
    deviceUtilsRepository: Repositories.deviceUtil.read(),
  ),
);

class ContractController extends StateNotifier<ContractState> {
  final DeviceUtilsRepository _deviceUtilsRepository;

  ContractController(
    super.initialState, {
    required DeviceUtilsRepository deviceUtilsRepository,
  }) : _deviceUtilsRepository = deviceUtilsRepository;

  File get signatureLandLordFile =>
      state.signatureLandLordFile ?? File('file1.txt');
  File get signatureLesseFile => state.signatureLesseFile ?? File('file2.txt');

  Future<void> loadSignaturesFiles({
    required String landLord,
    required String lesse,
  }) async {
    if (state.signatureLandLordFile == null ||
        state.signatureLesseFile == null) {
      final signatureLandLordFile = await _deviceUtilsRepository.getFile(
        landLord,
      );

      final signatureLesseFile = await _deviceUtilsRepository.getFile(
        lesse,
      );

      state = state.copyWith(
        signatureLandLordFile: signatureLandLordFile,
        signatureLesseFile: signatureLesseFile,
      );
    }
  }
}
