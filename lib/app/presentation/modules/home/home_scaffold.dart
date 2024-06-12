import 'package:flutter/material.dart';
import 'package:flutter_meedu/consumer/consumer_widget.dart';
import 'package:go_router/go_router.dart';

import '../../global/widgets/body_inside_app.dart';
import '../../global/widgets/un_focus_keyboard_w.dart';
import '../../router/routes/profile_route.dart';
import 'bottom_navigation_bar.dart';
import 'submodules/profile/controller/profile_controller.dart';
import 'views/controller/home_controller.dart';

class HomeScaffold extends ConsumerWidget {
  const HomeScaffold({
    super.key,
    required this.child,
    required this.state,
  });

  final Widget child;
  final GoRouterState state;

  @override
  Widget build(BuildContext context, ref) {
    final homeController = homeProvider.read();
    Future<void> goTo(HomeBottomNavigationBarItem item) async {
      if (item.routePath == ProfileRoute.path) {
        final ProfileController profileController = profileProvider.read();
        profileController.loadSignatureFile();
      }
      homeController.changePageIndex(item.routePath);
      context.go(item.routePath);
    }

    return UnFocusKeyboardW(
      child: BodyInsideApp(
        body: child,
        bottomNavigationBar: HomeBottomNavigationBar(
          currentLocation: homeController.currentPagePath,
          onTap: goTo,
        ),
      ),
    );
  }
}
