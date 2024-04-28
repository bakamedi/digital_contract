import 'package:flutter/material.dart';

import '../../../../../../core/responsive/responsive.dart';
import 'user_message_item_w.dart';

class UsersW extends StatelessWidget {
  final Responsive responsive;
  const UsersW({super.key, required this.responsive});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return UserMessageItem(
            responsive: responsive,
            name: 'Christian Campodonico',
            lastMessage:
                'hola quiero kadskjkljklasjdkajskldj klajsdklajklsjd klajslk',
            countNewMessage: '1',
            time: '11:30',
            imagePath: '',
          );
        },
        childCount: 100,
      ),
    );
  }
}
