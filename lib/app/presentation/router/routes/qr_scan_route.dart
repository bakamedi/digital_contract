import 'package:go_router/go_router.dart';

import '../../modules/qr/views/qr_scan_view.dart';

class QrScanRoute {
  static const path = '/qr-scan';

  static GoRoute get route {
    return GoRoute(
      path: path,
      name: path,
      builder: (_, __) => const QRScanView(),
    );
  }
}
