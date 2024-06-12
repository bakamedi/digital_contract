import 'package:digital_contract/app/core/extensions/widgets_ext.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../../../core/responsive/responsive.dart';
import '../../../../../core/theme/theme_app_data.dart';

class OtpResendW extends StatelessWidget {
  final Responsive responsive;

  const OtpResendW({super.key, required this.responsive});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: '¿No recibiste el código OTP? ',
        style: TextStyle(
          color: ThemeAppData.grayColor,
          fontWeight: FontWeight.w600,
          fontSize: responsive.dp(1.4),
        ),
        children: <TextSpan>[
          TextSpan(
            text: 'Reenviar Código',
            style: TextStyle(
              color: ThemeAppData.blueColor,
              fontWeight: FontWeight.bold,
              fontSize: responsive.dp(1.4),
            ),
            recognizer: TapGestureRecognizer()..onTap = () {},
          ),
        ],
      ),
    ).padding(
      EdgeInsets.only(
        top: responsive.bhp(5),
      ),
    );
  }
}
