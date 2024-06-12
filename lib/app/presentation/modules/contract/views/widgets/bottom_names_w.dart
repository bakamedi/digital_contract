import 'package:digital_contract/app/core/extensions/widgets_ext.dart';
import 'package:flutter/material.dart';

import '../../../../../core/responsive/responsive.dart';
import '../../../../../core/theme/theme_app_data.dart';

class BottomNamesW extends StatelessWidget {
  final Responsive responsive;
  final String landLordName;
  final String landLordIdentification;
  final String lesseName;
  final String lesseIdentification;

  const BottomNamesW({
    super.key,
    required this.responsive,
    required this.landLordName,
    required this.landLordIdentification,
    required this.lesseName,
    required this.lesseIdentification,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _nameAndId(
            responsive,
            name: landLordName,
            identification: landLordIdentification,
            crossAxisAlignment: CrossAxisAlignment.start,
          ),
          _nameAndId(
            responsive,
            name: lesseName,
            identification: lesseIdentification,
            crossAxisAlignment: CrossAxisAlignment.end,
          ),
        ],
      ).padding(
        EdgeInsets.only(
          left: responsive.bwh(5),
          right: responsive.bwh(5),
          bottom: responsive.bhp(20),
        ),
      ),
    );
  }

  Widget _nameAndId(
    Responsive responsive, {
    required String name,
    required String identification,
    required CrossAxisAlignment crossAxisAlignment,
  }) {
    return Column(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        FittedBox(
          child: Text(
            name,
            style: TextStyle(
              color: ThemeAppData.blackColor,
              fontWeight: FontWeight.w600,
              fontSize: responsive.dp(1.1),
            ),
          ),
        ),
        Text(
          identification,
          style: TextStyle(
            color: ThemeAppData.blackColor,
            fontWeight: FontWeight.w600,
            fontSize: responsive.dp(1.1),
          ),
        ),
      ],
    );
  }
}
