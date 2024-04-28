import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:syncfusion_flutter_signaturepad/signaturepad.dart';

part 'digital_signature_state.freezed.dart';

@freezed
class DigitalSignatureState with _$DigitalSignatureState {
  const DigitalSignatureState._();
  const factory DigitalSignatureState({
    @Default('my_signature') String mySignature,
    GlobalKey<SfSignaturePadState>? signatureGlobalKey,
    @Default(true) bool show,
    @Default(3.0) double stroke,
  }) = _DigitalSignatureState;
  static DigitalSignatureState get initialState => DigitalSignatureState(
        signatureGlobalKey: GlobalKey(),
        mySignature: 'my_signature',
      );
}
