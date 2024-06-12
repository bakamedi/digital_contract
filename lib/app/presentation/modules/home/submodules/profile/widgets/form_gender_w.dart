import 'package:flutter/material.dart';

import 'package:digital_contract/app/core/extensions/widgets_ext.dart';

import '../../../../../../core/responsive/responsive.dart';

class FormGenderW extends StatelessWidget {
  final Responsive responsive;
  final String title;
  const FormGenderW({
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
        Row(
          children: [
            Expanded(
              child: RadioListTile.adaptive(
                title: Text(
                  'Masculino',
                  style: TextStyle(
                    fontSize: responsive.dp(1.5),
                  ),
                ),
                value: 'F',
                groupValue: const ['M', 'F'],
                onChanged: (value) {},
              ),
            ),
            Expanded(
              child: RadioListTile.adaptive(
                title: Text(
                  'Femenino',
                  style: TextStyle(
                    fontSize: responsive.dp(1.5),
                  ),
                ),
                value: 'F',
                groupValue: ['M', 'F'],
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
