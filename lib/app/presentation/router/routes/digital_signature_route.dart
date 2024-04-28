import 'package:go_router/go_router.dart';

import '../../modules/digital_signature/views/digital_signature_view.dart';

class DigitalSignatureRoute {
  static const path = '/digital_signature';

  static GoRoute get route {
    return GoRoute(
      path: path,
      name: path,
      builder: (_, __) => const DigitalSignatureView(),
    );
  }
}
