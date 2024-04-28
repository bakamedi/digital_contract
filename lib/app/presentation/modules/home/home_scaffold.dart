import 'package:digital_contract/app/presentation/router/routes/profile_route.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:digital_contract/app/presentation/global/widgets/un_focus_keyboard_w.dart';

import '../../global/widgets/body_inside_app.dart';
import 'bottom_navigation_bar.dart';
import 'submodules/profile/controller/profile_controller.dart';

class HomeScaffold extends StatelessWidget {
  const HomeScaffold({
    super.key,
    required this.child,
    required this.state,
  });

  final Widget child;
  final GoRouterState state;

  @override
  Widget build(BuildContext context) {
    Future<void> goTo(HomeBottomNavigationBarItem item) async {
      //final redirect = await authGuard(context, state);
      //print(item.routePath);
      //print(redirect);
      //if (!context.mounted) {
      //  return;
      //} else {
      print(item.routePath);
      if (item.routePath == ProfileRoute.path) {
        final ProfileController profileController = profileProvider.read();
        profileController.loadSignatureFile();
      }
      context.go(item.routePath);
      //  return;
      //}
    }

    return UnFocusKeyboardW(
      child: BodyInsideApp(
        body: child,
        bottomNavigationBar: HomeBottomNavigationBar(
          currentLocation: '',
          onTap: goTo,
        ),
      ),
    );
  }
}
