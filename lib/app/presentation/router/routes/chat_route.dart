import 'package:go_router/go_router.dart';

import '../../modules/chat/views/chat_view.dart';

class ChatsRoute {
  static const path = '/chat';

  static GoRoute get route {
    return GoRoute(
      path: path,
      name: path,
      builder: (_, __) => const ChatView(),
    );
  }
}
