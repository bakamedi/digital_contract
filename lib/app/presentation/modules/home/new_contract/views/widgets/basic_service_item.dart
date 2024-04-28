import 'package:digital_contract/app/presentation/global/extensions/widgets_ext.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/responsive/responsive.dart';
import '../../../../../../core/theme/theme_app_data.dart';
import '../../../../../global/widgets/input_fields/text_text_form_field.dart';

class BasicServiceItem extends StatelessWidget {
  final bool selected;
  final IconData iconData;
  final String name;
  const BasicServiceItem({
    super.key,
    required this.iconData,
    this.selected = false,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _selectedIcon(responsive),
        Expanded(
          child: InputTextField(
            backgroundText: name,
            enabled: selected,
            onChanged: (value) {},
          ),
        ),
      ],
    ).padding(
      const EdgeInsets.only(left: 25),
    );
  }

  Widget _selectedIcon(Responsive responsive) {
    final color =
        selected ? ThemeAppData.greenDoneColor : ThemeAppData.grayBackIconColor;
    return Container(
      height: responsive.hp(9),
      width: responsive.wp(9),
      decoration: BoxDecoration(
        color: color.withOpacity(0.2),
        shape: BoxShape.circle,
      ),
      child: Icon(
        iconData,
        color: color,
      ),
    );
  }
}
