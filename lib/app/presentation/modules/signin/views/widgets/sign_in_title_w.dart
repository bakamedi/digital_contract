import 'package:digital_contract/app/presentation/global/extensions/widgets_ext.dart';
import 'package:flutter/widgets.dart';

import '../../../../../core/responsive/responsive.dart';
import '../../../../../core/theme/theme_app_data.dart';

class SignInTitleW extends StatelessWidget {
  final Responsive responsive;
  final String title;
  final String subTitle;
  final String? phone;

  const SignInTitleW({
    super.key,
    required this.responsive,
    required this.title,
    required this.subTitle,
    this.phone,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            color: ThemeAppData.blackColor,
            fontWeight: FontWeight.w600,
            fontSize: responsive.dp(2.5),
          ),
        ).padding(
          EdgeInsets.only(
            bottom: responsive.bhp(1.2),
          ),
        ),
        RichText(
          text: TextSpan(
            text: subTitle,
            style: TextStyle(
              color: ThemeAppData.grayColor,
              fontWeight: FontWeight.w600,
              fontSize: responsive.dp(1.6),
            ),
            children: <TextSpan>[
              TextSpan(
                text: ' ${phone ?? ''}',
                style: TextStyle(
                  color: ThemeAppData.blackColor,
                  fontWeight: FontWeight.bold,
                  fontSize: responsive.dp(1.6),
                ),
              ),
            ],
          ),
        ),
      ],
    ).padding(
      EdgeInsets.only(
        left: responsive.bwh(5),
        right: responsive.bwh(5),
        bottom: responsive.bhp(3),
      ),
    );
  }
}
