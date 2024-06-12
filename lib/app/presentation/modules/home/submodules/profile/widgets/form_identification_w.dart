import 'package:flutter/material.dart';

import 'package:digital_contract/app/core/extensions/widgets_ext.dart';

import '../../../../../../core/responsive/responsive.dart';
import '../../../../../global/widgets/input_fields/text_text_form_field.dart';

class FormIdentificationW extends StatelessWidget {
  final Responsive responsive;
  final String title;

  const FormIdentificationW({
    super.key,
    required this.responsive,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _formTitle(),
        InputTextField(
          backgroundText: 'Ingrese aquí tu identificación',
          onChanged: (value) {},
        ),
        Row(
          children: [
            Flexible(
              child: RadioListTile.adaptive(
                title: Text(
                  'Cédula',
                  style: TextStyle(
                    fontSize: responsive.dp(1.4),
                  ),
                ),
                value: 'ID',
                groupValue: const ['ID', 'RUC'],
                onChanged: (value) {},
              ),
            ),
            Flexible(
              child: RadioListTile.adaptive(
                title: Text(
                  'RUC',
                  style: TextStyle(
                    fontSize: responsive.dp(1.4),
                  ),
                ),
                value: 'RUC',
                groupValue: const ['ID', 'RUC'],
                onChanged: (value) {},
              ),
            ),
            Flexible(
              child: RadioListTile.adaptive(
                title: Text(
                  'Pasaporte',
                  style: TextStyle(
                    fontSize: responsive.dp(1.4),
                  ),
                ),
                value: 'PASSPORT',
                groupValue: const ['ID', 'RUC'],
                onChanged: (value) {},
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _formTitle() {
    return Text(
      title,
      style: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: responsive.dp(1.5),
      ),
    ).padding(
      EdgeInsets.symmetric(
        horizontal: responsive.bwh(5),
      ),
    );
  }
}
