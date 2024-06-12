import 'package:digital_contract/app/core/extensions/widgets_ext.dart';
import 'package:flutter/material.dart';

import '../../../../../core/responsive/responsive.dart';
import '../../../../../core/theme/theme_app_data.dart';
import '../../../../global/widgets/custom_text.dart';
import 'bill_tab_bar_w.dart';

class BillAppBar extends StatelessWidget {
  final Responsive responsive;

  const BillAppBar({
    super.key,
    required this.responsive,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: responsive.bwh(40),
      flexibleSpace: FlexibleSpaceBar(
        background: Container(
          margin: EdgeInsets.only(
            top: responsive.bhp(13),
            left: responsive.bwh(5),
            right: responsive.bwh(5),
          ),
          width: responsive.bwh(100),
          height: responsive.bhp(1),
          decoration: BoxDecoration(
            color: ThemeAppData.blackColor,
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      'Pago Actual: ',
                      fontSize: responsive.dp(1.5),
                      color: ThemeAppData.whiteColor,
                    ),
                    CustomText(
                      'Pendiente',
                      fontSize: responsive.dp(1.5),
                      color: ThemeAppData.whiteColor,
                    ),
                  ],
                ),
              ),
              Center(
                child: CustomText(
                  '\$220.00',
                  fontSize: responsive.dp(2.5),
                  fontWeight: FontWeight.bold,
                  color: ThemeAppData.whiteColor,
                ),
              ),
              CustomText(
                'Fecha de pago: 12/12/2024',
                fontSize: responsive.dp(1.5),
                color: ThemeAppData.whiteColor,
              ),
            ],
          ).padding(
            EdgeInsets.only(
              top: responsive.bhp(1),
              bottom: responsive.bhp(1),
              left: responsive.bwh(3),
            ),
          ),
        ),
      ),
      title: CustomText(
        'Historial de Pagos',
        fontSize: responsive.dp(2.1),
        color: ThemeAppData.blackColor,
      ),
    );
  }
}
