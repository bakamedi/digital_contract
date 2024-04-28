import 'package:flutter/material.dart';

import '../../../../core/responsive/responsive.dart';
import '../../../../core/theme/theme_app_data.dart';

class SecondaryBtn extends StatelessWidget {
  final String btnText;
  final double horizontalSpace;
  final double fontSize;
  final Function() onPressed;

  const SecondaryBtn({
    super.key,
    required this.btnText,
    required this.onPressed,
    this.horizontalSpace = 20.0,
    this.fontSize = 0,
  });

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive(context);

    double fontSize = this.fontSize > 0.0 ? this.fontSize : responsive.dp(1.7);
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: horizontalSpace,
      ),
      width: double.infinity,
      //color: ThemeColor.whiteColor,
      child: OutlinedButton(
        style: const ButtonStyle(
          backgroundColor: MaterialStatePropertyAll<Color>(Colors.white),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Text(
            btnText,
            style: TextStyle(
              fontSize: fontSize,
              color: ThemeAppData.blackColor,
            ),
          ),
        ),
        onPressed: () {
          onPressed();
        },
      ),
    );
  }
}
