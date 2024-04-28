import 'package:flutter/material.dart';

import '../../../../../core/responsive/responsive.dart';
import '../../../../../core/theme/theme_app_data.dart';

const radius = Radius.circular(15);

class MyMessageW extends StatelessWidget {
  final Responsive responsive;
  final String message;
  final bool estate;
  const MyMessageW({
    super.key,
    required this.responsive,
    required this.message,
    required this.estate,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
          estate ? CrossAxisAlignment.end : CrossAxisAlignment.start,
      children: [
        Container(
          margin: estate
              ? null
              : EdgeInsets.only(
                  left: responsive.bwh(
                    2,
                  ),
                ),
          decoration: BoxDecoration(
            color: estate
                ? ThemeAppData.blackColor
                : ThemeAppData.backgroundChatColor,
            borderRadius: BorderRadius.only(
              topLeft: radius,
              topRight: estate ? Radius.zero : radius,
              bottomLeft: estate ? radius : Radius.zero,
              bottomRight: radius,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: responsive.bhp(1),
              horizontal: responsive.bwh(5),
            ),
            child: Text(
              message,
              style: TextStyle(
                fontSize: responsive.dp(1.4),
                color:
                    estate ? ThemeAppData.whiteColor : ThemeAppData.blackColor,
              ),
            ),
          ),
        ),
        SizedBox(
          height: responsive.bhp(1),
        )
      ],
    );
  }
}
