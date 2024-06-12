import 'package:digital_contract/app/core/extensions/widgets_ext.dart';
import 'package:flutter/material.dart';

import '../../../../../core/responsive/responsive.dart';
import '../../../../../core/theme/theme_app_data.dart';
import '../../../../global/widgets/custom_text.dart';

class BillsW extends StatelessWidget {
  final Responsive responsive;

  const BillsW({
    super.key,
    required this.responsive,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    'Pago de Diciembre',
                    fontSize: responsive.dp(1.5),
                    fontWeight: FontWeight.w600,
                  ),
                  CustomText(
                    'Fecha de pago: 20/12/2024',
                    fontSize: responsive.dp(1.2),
                    fontWeight: FontWeight.w600,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: responsive.bwh(2),
                    ),
                    decoration: BoxDecoration(
                      color: ThemeAppData.pendingColor,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: CustomText(
                      'Pendiente',
                      fontSize: responsive.dp(1.2),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              CustomText(
                '\$300.00',
                fontSize: responsive.dp(1.5),
                fontWeight: FontWeight.bold,
              ),
            ],
          ).padding(
            EdgeInsets.symmetric(
              vertical: responsive.bhp(1),
              horizontal: responsive.bwh(6),
            ),
          );
        },
        childCount: 100,
      ),
    );
  }
}
