import 'package:flutter/material.dart';
import 'dart:math';

import '../../../../../core/responsive/responsive.dart';
import '../../../../../core/theme/theme_app_data.dart';
import '../../controlller/digital_signature_controller.dart';

class StrokeW extends StatelessWidget {
  final Responsive responsive;
  final DigitalSignatureController digitalSignatureController;
  const StrokeW({
    super.key,
    required this.responsive,
    required this.digitalSignatureController,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: pi / 2,
      alignment: Alignment.center,
      child: Container(
        margin: EdgeInsets.only(
          top: responsive.bhp(42),
        ),
        child: Slider.adaptive(
          activeColor: ThemeAppData.blackColor,
          value: digitalSignatureController.stroke,
          label: digitalSignatureController.stroke.toString(),
          divisions: 19,
          min: 1,
          max: 20,
          onChanged: (value) => digitalSignatureController.changeStroke(value),
        ),
      ),
    );
  }
}
