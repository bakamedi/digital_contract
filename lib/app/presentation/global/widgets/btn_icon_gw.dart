import 'package:flutter/material.dart';

import '../../../core/responsive/responsive.dart';
import '../../../core/theme/theme_app_data.dart';

class BtnIconGW extends StatelessWidget {
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final IconData icon;
  final double? height;
  final double? width;
  final void Function()? onTap;

  const BtnIconGW({
    super.key,
    required this.icon,
    this.onTap,
    this.margin,
    this.padding,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive(context);

    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        height: height ?? responsive.bhp(5),
        width: width ?? responsive.bwh(6),
        margin: margin,
        padding: padding,
        decoration: BoxDecoration(
          color: ThemeAppData.blackColor,
          shape: BoxShape.circle,
        ),
        child: Icon(
          icon,
          color: ThemeAppData.whiteColor,
          size: responsive.dp(1.6),
        ),
      ),
    );
  }
}
