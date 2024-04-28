import 'package:flutter/material.dart';

import '../../../../../core/responsive/responsive.dart';
import '../../../../../core/theme/theme_app_data.dart';

class BottomOptionsW extends StatelessWidget {
  final Responsive responsive;
  final IconData iconDataOne;
  final IconData iconDataTwo;
  final IconData iconDataThree;
  final IconData iconDataFour;

  final void Function() onPressedOne;
  final void Function() onPressedTwo;
  final void Function() onPressedThree;
  final void Function() onPressedFour;

  const BottomOptionsW({
    super.key,
    required this.responsive,
    required this.iconDataOne,
    required this.iconDataTwo,
    required this.iconDataThree,
    required this.onPressedOne,
    required this.onPressedTwo,
    required this.onPressedThree,
    required this.iconDataFour,
    required this.onPressedFour,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _bottomBtn(
          responsive,
          icon: iconDataOne,
          onTap: onPressedOne,
        ),
        _bottomBtn(
          responsive,
          icon: iconDataTwo,
          onTap: onPressedTwo,
        ),
        _bottomBtn(
          responsive,
          icon: iconDataThree,
          onTap: onPressedThree,
        ),
        _bottomBtn(
          responsive,
          icon: iconDataFour,
          onTap: onPressedFour,
        ),
      ],
    );
  }

  Widget _bottomBtn(
    Responsive responsive, {
    required IconData icon,
    required void Function()? onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: responsive.bhp(12),
        width: responsive.bwh(12),
        margin: EdgeInsets.only(
          left: responsive.bwh(1),
          right: responsive.bwh(1),
        ),
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
