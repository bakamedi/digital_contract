import 'package:flutter_meedu/notifiers.dart';
import 'package:flutter_meedu/providers.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

import 'qr_state.dart';

final qrScanProvider = Provider.state<QrScanController, QrState>(
  (_) => QrScanController(
    QrState.initialState,
  ),
);

class QrScanController extends StateNotifier<QrState> {
  QrScanController(super.initialState) {
    //mobileScannerController!.start();
  }

  MobileScannerController? get mobileScannerController =>
      state.mobileScannerController;

  @override
  void dispose() async {
    if (mobileScannerController != null) {
      //await mobileScannerController!.stop();
    }
    super.dispose();
  }
}
