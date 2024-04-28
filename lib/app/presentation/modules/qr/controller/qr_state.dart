import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

part 'qr_state.freezed.dart';

@freezed
class QrState with _$QrState {
  const QrState._();
  const factory QrState({
    MobileScannerController? mobileScannerController,
  }) = _QrState;
  static QrState get initialState => QrState(
        mobileScannerController: MobileScannerController(
          detectionSpeed: DetectionSpeed.normal,
          facing: CameraFacing.back,
          torchEnabled: true,
        ),
      );
}
