import 'package:go_router/go_router.dart';

import '../../modules/bill/views/bill_view.dart';

class BillRoute {
  static const path = '/bill';

  static GoRoute get route {
    return GoRoute(
      path: path,
      name: path,
      builder: (_, __) => const BillView(),
    );
  }
}
