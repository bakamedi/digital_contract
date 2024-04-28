import 'package:digital_contract/app/presentation/global/extensions/widgets_ext.dart';
import 'package:flutter/material.dart';

import '../../../../../core/responsive/responsive.dart';

class TitleNameW extends StatelessWidget {
  final Responsive responsive;
  final String title;
  final String name;

  const TitleNameW({
    super.key,
    required this.responsive,
    required this.title,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: responsive.dp(1.8),
            ),
          ),
          Text(
            'Arrendatario: $name',
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.w500,
              fontSize: responsive.dp(1.55),
            ),
          ),
        ],
      ).padding(
        EdgeInsets.only(
          top: responsive.bhp(1.5),
          left: responsive.bwh(5),
        ),
      ),
    );
  }
}
