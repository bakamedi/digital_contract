import 'package:go_router/go_router.dart';

import '../../modules/signup/views/sign_up_view.dart';

class SignUpRoute {
  static const path = '/sign-up';

  static GoRoute get route {
    return GoRoute(
      path: path,
      name: path,
      builder: (_, __) => const SignUpView(),
    );
  }
}
