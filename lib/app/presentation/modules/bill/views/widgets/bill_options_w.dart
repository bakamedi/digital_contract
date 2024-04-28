import 'package:flutter/material.dart';

import '../../../../../core/icons/digital_contract_icons.dart';
import '../../../../../core/responsive/responsive.dart';
import '../../../../../core/theme/theme_app_data.dart';
import '../../../../global/widgets/custom_text.dart';

class BillOptionsW extends StatelessWidget {
  final Responsive responsive;

  const BillOptionsW({
    super.key,
    required this.responsive,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _bottomBtn(
          responsive,
          name: 'Pendientes',
          change: true,
          onTap: () {},
        ),
        _bottomBtn(
          responsive,
          name: 'Pagados',
          change: false,
          onTap: () {},
        ),
        _closeBtn(
          responsive,
          icon: DigitalContractIcons.xmark_solid,
          onTap: () {},
        ),
      ],
    );
  }

  Widget _bottomBtn(
    Responsive responsive, {
    required String name,
    required bool change,
    required void Function()? onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: responsive.bhp(5),
        width: responsive.bwh(23),
        margin: EdgeInsets.only(
          left: responsive.bwh(1),
          right: responsive.bwh(1),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: change ? ThemeAppData.greyBtnColor : ThemeAppData.blackColor,
        ),
        child: Center(
          child: CustomText(
            name,
            fontWeight: FontWeight.w600,
            color: change ? ThemeAppData.blackColor : ThemeAppData.whiteColor,
            fontSize: responsive.dp(1.5),
          ),
        ),
      ),
    );
  }

  Widget _closeBtn(
    Responsive responsive, {
    required IconData icon,
    required void Function()? onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: responsive.bhp(9),
        width: responsive.bwh(9),
        margin: EdgeInsets.only(
          left: responsive.bwh(1),
          right: responsive.bwh(1),
        ),
        decoration: BoxDecoration(
          color: ThemeAppData.blackColor,
          shape: BoxShape.circle,
        ),
        child: Icon(
          icon,
          color: ThemeAppData.whiteColor,
          size: responsive.dp(1.6),
        ),
      ),
    );
  }
}
