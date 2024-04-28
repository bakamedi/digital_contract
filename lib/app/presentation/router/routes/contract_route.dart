import 'package:go_router/go_router.dart';

import '../../modules/contract/views/contract_view.dart';

class ContractRoute {
  static const path = '/contract';

  static GoRoute get route {
    return GoRoute(
      path: path,
      name: path,
      builder: (_, __) => const ContractView(),
    );
  }
}
