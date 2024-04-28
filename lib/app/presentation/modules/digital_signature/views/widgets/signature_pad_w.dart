import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_signaturepad/signaturepad.dart';

import '../../../../../core/theme/theme_app_data.dart';
import '../../controlller/digital_signature_controller.dart';

class SignaturePadW extends StatelessWidget {
  final DigitalSignatureController digitalSignatureController;
  const SignaturePadW({
    super.key,
    required this.digitalSignatureController,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox.expand(
        child: SfSignaturePad(
          key: digitalSignatureController.signatureGlobalKey,
          minimumStrokeWidth: 1,
          maximumStrokeWidth: digitalSignatureController.stroke,
          strokeColor: ThemeAppData.blackColor,
        ),
      ),
    );
  }
}
