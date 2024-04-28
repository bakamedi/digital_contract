import 'package:digital_contract/app/presentation/router/routes/chat_route.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/responsive/responsive.dart';
import '../../../../../../core/theme/theme_app_data.dart';

class UserMessageItem extends StatelessWidget {
  final Responsive responsive;
  final String imagePath;
  final String name;
  final String lastMessage;
  final String countNewMessage;
  final String time;
  const UserMessageItem({
    super.key,
    required this.responsive,
    required this.name,
    required this.imagePath,
    required this.lastMessage,
    required this.countNewMessage,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.pushNamed(ChatsRoute.path),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: responsive.bwh(5),
        ),
        color: ThemeAppData.whiteColor,
        child: Column(
          children: [
            Row(
              children: [
                const CircleAvatar(
                  child: Text('CC'),
                ),
                SizedBox(
                  width: responsive.bwh(4),
                ),
                Expanded(
                  flex: 10,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                          color: ThemeAppData.blackColor,
                          fontWeight: FontWeight.w600,
                          fontSize: responsive.dp(1.6),
                        ),
                      ),
                      Text(
                        lastMessage,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: ThemeAppData.grayColor,
                          fontSize: responsive.dp(1.6),
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: responsive.bhp(1),
                    ),
                    Text(
                      time,
                      style: TextStyle(
                        color: ThemeAppData.grayColor,
                        fontSize: responsive.dp(1.6),
                      ),
                    ),
                    Container(
                      width: responsive.bwh(5),
                      height: responsive.bhp(5),
                      decoration: BoxDecoration(
                        color: ThemeAppData.blackColor,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Text(
                          countNewMessage,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: ThemeAppData.whiteColor,
                            fontSize: responsive.dp(1.4),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const Divider(),
          ],
        ),
      ),
    );
  }
}
