import 'package:digital_contract/app/presentation/global/extensions/widgets_ext.dart';
import 'package:flutter/material.dart';

import '../../../../../core/icons/digital_contract_icons.dart';
import '../../../../../core/responsive/responsive.dart';
import '../../../../../core/theme/theme_app_data.dart';

class BillTabBarW extends StatelessWidget {
  final Responsive responsive;
  const BillTabBarW({
    super.key,
    required this.responsive,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _tabBarItem(
            title: 'Pendientes',
            selected: true,
          ),
          _tabBarItem(
            title: 'Pagados',
            selected: false,
          ),
          const Icon(
            DigitalContractIcons.circle_xmark_regular,
          ),
        ],
      ).padding(
        EdgeInsets.only(
          top: responsive.bhp(1.5),
        ),
      ),
    );
  }

  Widget _tabBarItem({
    required String title,
    required bool selected,
  }) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        backgroundColor: selected
            ? ThemeAppData.blackColor
            : ThemeAppData.grayColor.withOpacity(
                0.3,
              ),
      ),
      child: Text(
        title,
        style: _selectedItemStyleText(
          selected,
        ),
      ),
    );
  }

  TextStyle _selectedItemStyleText(bool selected) {
    return TextStyle(
      fontWeight: selected ? FontWeight.bold : FontWeight.w400,
      color: selected ? ThemeAppData.whiteColor : ThemeAppData.blackColor,
    );
  }
}
