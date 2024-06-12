import 'package:digital_contract/app/core/extensions/widgets_ext.dart';
import 'package:flutter/widgets.dart';

import '../../../../../core/responsive/responsive.dart';
import '../../../../../core/theme/theme_app_data.dart';

class SignUpTitleW extends StatelessWidget {
  final Responsive responsive;
  const SignUpTitleW({
    super.key,
    required this.responsive,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Bienvenido, comienza con nosotros',
      style: TextStyle(
        color: ThemeAppData.blackColor,
        fontWeight: FontWeight.w500,
        fontSize: responsive.dp(3),
      ),
    ).padding(
      EdgeInsets.only(
        left: responsive.bwh(5),
        right: responsive.bwh(5),
        bottom: responsive.bhp(5),
      ),
    );
  }
}
