import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../controller/qr_scan_controller.dart';

void closeQrCamera(BuildContext context) {
  final qrScanController = qrScanProvider.read();
  final mobileScannerController = qrScanController.mobileScannerController;
  if (mobileScannerController != null) {}
  context.pop();
}
