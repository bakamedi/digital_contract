import 'package:go_router/go_router.dart';

import '../../modules/signin/views/sign_in_view.dart';

class SignInRoute {
  static const path = '/sign-in';

  static GoRoute get route {
    return GoRoute(
      path: path,
      name: path,
      builder: (_, __) => const SignInView(),
    );
  }
}
