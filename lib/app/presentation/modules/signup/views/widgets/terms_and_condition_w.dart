import 'package:digital_contract/app/presentation/global/extensions/widgets_ext.dart';
import 'package:flutter/material.dart';

import '../../../../../core/responsive/responsive.dart';
import '../../../../../core/theme/theme_app_data.dart';

class TermsAndConditionW extends StatelessWidget {
  final Responsive responsive;
  const TermsAndConditionW({
    super.key,
    required this.responsive,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox.adaptive(
          value: true,
          activeColor: ThemeAppData.blackColor,
          onChanged: (bool? value) {},
        ),
        const Flexible(
          child: Text(
            'Estoy de acuerdo con los Términos de condiciones y la política de privacidad.',
          ),
        ),
      ],
    ).padding(
      EdgeInsets.symmetric(
        vertical: responsive.bhp(1),
        horizontal: responsive.bwh(2),
      ),
    );
  }
}
