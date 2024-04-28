import 'package:digital_contract/app/presentation/global/extensions/widgets_ext.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/responsive/responsive.dart';
import '../../../../../core/theme/theme_app_data.dart';
import '../../../../router/routes/sign_up_route.dart';

class SignUpGoRegisterW extends StatelessWidget {
  final Responsive responsive;
  const SignUpGoRegisterW({
    super.key,
    required this.responsive,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          text: '¿No posees una cuenta?',
          style: TextStyle(
            color: ThemeAppData.grayColor,
            fontSize: responsive.dp(1.5),
            fontWeight: FontWeight.w300,
          ),
          children: <TextSpan>[
            TextSpan(
              text: ' Regístrate',
              style: TextStyle(
                color: ThemeAppData.blackColor,
                fontSize: responsive.dp(1.5),
                fontWeight: FontWeight.w600,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () => context.pushNamed(
                      SignUpRoute.path,
                    ),
            ),
          ],
        ),
      ).padding(
        EdgeInsets.only(
          top: responsive.bhp(3),
        ),
      ),
    );
  }
}
