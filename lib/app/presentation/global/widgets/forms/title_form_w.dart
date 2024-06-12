import 'package:digital_contract/app/core/extensions/widgets_ext.dart';
import 'package:flutter/widgets.dart';

import '../../../../core/responsive/responsive.dart';

class TitleFormW extends StatelessWidget {
  final Responsive responsive;
  final String title;
  const TitleFormW({
    super.key,
    required this.responsive,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: responsive.dp(1.5),
      ),
    ).padding(
      EdgeInsets.symmetric(
        vertical: responsive.bhp(1),
        horizontal: responsive.bwh(5),
      ),
    );
  }
}
