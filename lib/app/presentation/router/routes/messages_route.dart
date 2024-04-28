import 'package:go_router/go_router.dart';

import '../../modules/home/submodules/messages/messages_view.dart';

class MessagesRoute {
  static const path = '/messages';
  static const name = 'Messages';

  static get route {
    return GoRoute(
      path: path,
      name: name,
      //redirect: authGuard,
      builder: (_, state) => const MessagesView(),
    );
  }
}
