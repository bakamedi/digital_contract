import 'package:flutter/material.dart';

import '../../../../../core/icons/digital_contract_icons.dart';
import '../../../../../core/responsive/responsive.dart';
import '../../../../global/widgets/buttons/secondary_btn.dart';
import '../../../../global/widgets/custom_text.dart';
import '../../utils/open_permission_camera.dart';

class ErrorCameraQrW extends StatelessWidget {
  final Responsive responsive;
  const ErrorCameraQrW({
    super.key,
    required this.responsive,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          DigitalContractIcons.camera_solid,
          size: responsive.dp(15),
        ),
        CustomText(
          padding: EdgeInsets.only(
            top: responsive.bhp(5),
            bottom: responsive.bhp(3),
          ),
          'Para escanear el QR habilita el permiso de la cámara',
          fontSize: responsive.dp(1.8),
          textAlign: TextAlign.center,
        ),
        SecondaryBtn(
          btnText: 'Activa los permisos de camara',
          onPressed: () => openPermissionCamera(),
        ),
      ],
    );
  }
}
