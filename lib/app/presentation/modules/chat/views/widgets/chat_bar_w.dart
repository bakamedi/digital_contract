import 'package:digital_contract/app/presentation/global/extensions/strings_ext.dart';
import 'package:flutter/material.dart';

import '../../../../../core/responsive/responsive.dart';
import '../../../../../core/theme/theme_app_data.dart';

abstract class ChatBarW {
  ChatBarW._();

  static AppBar chatbar({
    required Responsive responsive,
    required String name,
  }) {
    return AppBar(
      title: Row(
        children: [
          CircleAvatar(
            child: Text(name.getInitials),
          ),
          SizedBox(
            width: responsive.bwh(2),
          ),
          Text(
            name,
            style: TextStyle(
              color: ThemeAppData.blackColor,
              fontWeight: FontWeight.w600,
              fontSize: responsive.dp(1.6),
            ),
          ),
        ],
      ),
    );
  }
}
