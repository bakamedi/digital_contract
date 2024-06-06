import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

import '../../global/controller/session.dart';
import '../routes/sign_up_route.dart';

Future<String?> authGuard(
  BuildContext context,
  GoRouterState state,
) async {
  final authenticatedUser = sessionProvider.read().state;
  print(authenticatedUser);
  if (authenticatedUser == null) {
    final redirect = Uri.encodeComponent(state.uri.toString());
    return '${SignUpRoute.path}?redirect=$redirect';
  }
  return null;
}
