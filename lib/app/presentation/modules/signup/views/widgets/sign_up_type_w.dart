import 'package:digital_contract/app/presentation/global/extensions/widgets_ext.dart';
import 'package:flutter/material.dart';

import '../../../../../core/responsive/responsive.dart';
import '../../../../global/widgets/dropdown_w.dart';

class SignUpTypeW extends StatelessWidget {
  const SignUpTypeW({super.key});

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive(context);

    return DropdownW(
      selected: 'Arrendador',
      dropdownList: const ['Arrendador', 'Arrendatario'],
      onChanged: (p0) {},
    ).padding(
      EdgeInsets.symmetric(
        horizontal: responsive.bwh(5),
      ),
    );
  }
}
