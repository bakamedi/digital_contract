import 'package:flutter/material.dart';

import '../../../../../../core/responsive/responsive.dart';
import '../../../../../global/widgets/forms/title_form_w.dart';
import '../../../../../global/widgets/input_fields/text_text_form_field.dart';

class FormProfileItemW extends StatelessWidget {
  final Responsive responsive;
  final String title;
  final String backgroundText;
  const FormProfileItemW({
    super.key,
    required this.responsive,
    required this.title,
    required this.backgroundText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleFormW(
          responsive: responsive,
          title: title,
        ),
        InputTextField(
          backgroundText: backgroundText,
          onChanged: (value) {},
        ),
      ],
    );
  }
}
