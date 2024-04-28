import 'package:go_router/go_router.dart';

import '../../modules/home/new_contract/views/new_contract_view.dart';

const path = '/new-contract';

class NewContractRoute {
  static const path = '/new-contract';
  static GoRoute get route {
    return GoRoute(
      path: path,
      name: path,
      builder: (_, __) => const NewContractView(),
    );
  }
}
