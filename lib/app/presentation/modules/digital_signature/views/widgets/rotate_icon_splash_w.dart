import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';

import '../../../../../core/responsive/responsive.dart';
import '../../../../../core/theme/theme_app_data.dart';
import '../../../../global/utils/images_path.dart';
import '../../controlller/digital_signature_controller.dart';

class RotateIconSplashW extends StatelessWidget {
  final DigitalSignatureController digitalSignatureController;
  final Responsive responsive;
  const RotateIconSplashW({
    super.key,
    required this.responsive,
    required this.digitalSignatureController,
  });

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: digitalSignatureController.show,
      child: Container(
        height: responsive.height,
        decoration: BoxDecoration(
          color: ThemeAppData.blackColor.withOpacity(0.8),
        ),
        child: ExtendedImage.asset(
          ImagesPath.ROTATE_DEVICE,
          color: ThemeAppData.whiteColor,
        ),
      ),
    );
  }
}
