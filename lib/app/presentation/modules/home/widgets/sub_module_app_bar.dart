import 'package:digital_contract/app/core/theme/theme_app_data.dart';
import 'package:flutter/material.dart';

import '../../../../core/responsive/responsive.dart';

class SubModuleAppBar extends StatelessWidget {
  final Responsive responsive;
  final String title;
  const SubModuleAppBar({
    super.key,
    required this.responsive,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: Text(
        title,
        style: TextStyle(
          color: ThemeAppData.blackColor,
          fontWeight: FontWeight.w600,
          fontSize: responsive.dp(2.5),
        ),
      ),
    );
  }
}
