import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_meedu/notifiers.dart';
import 'package:flutter_meedu/providers.dart';
import 'package:syncfusion_flutter_signaturepad/signaturepad.dart';

import '../../../../dependency_injection.dart.dart';
import '../../../../domain/repositories/device_utils_repository.dart';
import 'digital_signature_state.dart';

final digitalSignatureProvider =
    Provider.state<DigitalSignatureController, DigitalSignatureState>(
  (_) => DigitalSignatureController(
    DigitalSignatureState.initialState,
    deviceUtilsRepository: Repositories.deviceUtil.read(),
  ),
);

class DigitalSignatureController extends StateNotifier<DigitalSignatureState> {
  final DeviceUtilsRepository _deviceUtilsRepository;

  DigitalSignatureController(
    super.initialState, {
    required DeviceUtilsRepository deviceUtilsRepository,
  }) : _deviceUtilsRepository = deviceUtilsRepository {
    print('sajkdajlasd');
    Future.delayed(const Duration(seconds: 3), () {
      state = state.copyWith(
        show: false,
      );
    });
    print('sajkdajlasd');
  }

  GlobalKey<SfSignaturePadState>? get signatureGlobalKey =>
      state.signatureGlobalKey;

  bool get show => state.show;

  double get stroke => state.stroke;

  Future<Image> convertSignatureToImage() async {
    return (await signatureGlobalKey!.currentState!.toImage()) as Image;
  }

  void clearSignatureImage() async {
    signatureGlobalKey!.currentState!.clear();
  }

  Future<void> saveSignatureImage() async {
    final data = await signatureGlobalKey!.currentState!.toImage(
      pixelRatio: 3.0,
    );
    final bytes = await data.toByteData(
      format: ImageByteFormat.png,
    );
    if (bytes != null) {
      await _deviceUtilsRepository.saveImage(
        bytes,
        state.mySignature,
      );
    }
  }

  Future<String> getSignatureImagePath() async {
    return await _deviceUtilsRepository.getImagePath(
      state.mySignature,
    );
  }

  void changeStroke(double? valueStroke) {
    onlyUpdate(
      state = state.copyWith(
        stroke: valueStroke ?? 0,
      ),
    );
  }
}
