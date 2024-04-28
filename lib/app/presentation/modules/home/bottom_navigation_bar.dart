import 'package:flutter/material.dart';

import '../../../core/icons/digital_contract_icons.dart';
import '../../router/routes/home_route.dart';
import '../../router/routes/messages_route.dart';
import '../../router/routes/profile_route.dart';

enum HomeBottomNavigationBarItem {
  home(HomeRoute.path),
  messages(MessagesRoute.path),
  profile(ProfileRoute.path),
  ;

  const HomeBottomNavigationBarItem(this.routePath);

  final String routePath;
}

class HomeBottomNavigationBar extends StatelessWidget {
  const HomeBottomNavigationBar({
    super.key,
    required this.currentLocation,
    required this.onTap,
  });

  final String currentLocation;
  final void Function(HomeBottomNavigationBarItem item) onTap;

  @override
  Widget build(BuildContext context) {
    final padding = MediaQuery.of(context).padding;

    Color getIconColor(String path) => currentLocation.startsWith(path)
        ? const Color.fromARGB(255, 31, 31, 31)
        : const Color.fromARGB(97, 16, 16, 16);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Material(
          child: Padding(
            padding: EdgeInsets.only(
              left: 20,
              right: 20,
              top: 10,
              bottom: padding.bottom * 0.7,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () => onTap(HomeBottomNavigationBarItem.home),
                  selectedIcon: Icon(
                    DigitalContractIcons.file_signature_solid,
                    color: getIconColor(HomeRoute.path),
                  ),
                  icon: Icon(
                    DigitalContractIcons.file_signature_solid,
                    color: getIconColor(HomeRoute.path),
                  ),
                ),
                IconButton(
                  onPressed: () => onTap(HomeBottomNavigationBarItem.messages),
                  selectedIcon: Icon(
                    DigitalContractIcons.comments_solid,
                    color: getIconColor(MessagesRoute.path),
                  ),
                  icon: Icon(
                    DigitalContractIcons.comments_regular,
                    color: getIconColor(MessagesRoute.path),
                  ),
                ),
                IconButton(
                  onPressed: () => onTap(HomeBottomNavigationBarItem.profile),
                  selectedIcon: Icon(
                    DigitalContractIcons.user_solid,
                    color: getIconColor(ProfileRoute.path),
                  ),
                  icon: Icon(
                    DigitalContractIcons.user_regular,
                    color: getIconColor(ProfileRoute.path),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
