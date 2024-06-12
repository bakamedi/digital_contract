import 'package:flutter/material.dart';

import 'package:digital_contract/app/core/extensions/widgets_ext.dart';
import 'package:extended_image/extended_image.dart';

import '../../../../../../core/icons/digital_contract_icons.dart';
import '../../../../../../core/responsive/responsive.dart';
import '../../../../../../core/theme/theme_app_data.dart';

class ImageProfileW extends StatelessWidget {
  final Responsive responsive;
  const ImageProfileW({super.key, required this.responsive});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            ExtendedImage.network(
              'https://media.istockphoto.com/id/1309328823/es/foto/retrato-a-la-cabeza-de-un-empleado-masculino-sonriente-en-la-oficina.jpg?s=2048x2048&w=is&k=20&c=0XT_9kLNMSbzwrjupKQLDv3MyaJmTPQGl_OzNuWCqkk=',
              height: responsive.bhp(20),
              width: responsive.bwh(40),
              shape: BoxShape.circle,
              fit: BoxFit.cover,
            ),
            _cameraBtn(
              responsive,
              icon: DigitalContractIcons.camera_solid,
              onTap: () {},
            ),
          ],
        ),
      ],
    ).padding(
      EdgeInsets.only(
        top: responsive.bhp(10),
        bottom: responsive.bhp(2),
      ),
    );
  }

  Widget _cameraBtn(
    Responsive responsive, {
    required IconData icon,
    required void Function()? onTap,
  }) {
    return Positioned(
      top: responsive.bhp(12),
      left: responsive.bwh(27),
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: responsive.bhp(10),
          width: responsive.bwh(10),
          margin: EdgeInsets.only(
            left: responsive.bwh(1),
            right: responsive.bwh(1),
          ),
          decoration: BoxDecoration(
            color: ThemeAppData.blackColor,
            border: Border.all(
              width: responsive.dp(0.2),
              color: ThemeAppData.backgroundLightColor,
            ),
            shape: BoxShape.circle,
          ),
          child: Icon(
            icon,
            color: ThemeAppData.whiteColor,
            size: responsive.dp(1.6),
          ),
        ),
      ),
    );
  }
}
