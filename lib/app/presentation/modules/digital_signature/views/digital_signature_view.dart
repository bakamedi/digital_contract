import 'package:flutter/material.dart';
import 'package:digital_contract/app/presentation/global/extensions/widgets_ext.dart';
import 'package:flutter_meedu/consumer.dart';
import 'dart:math';

import '../../../../core/icons/digital_contract_icons.dart';
import '../../../../core/responsive/responsive.dart';
import '../../../global/widgets/btn_icon_gw.dart';
import '../controlller/digital_signature_controller.dart';
import '../utils/clear_signture_img.dart';
import '../utils/save_signature_img.dart';
import 'widgets/rotate_icon_splash_w.dart';
import 'widgets/signature_pad_w.dart';
import 'widgets/stroke_w.dart';

class DigitalSignatureView extends StatelessWidget {
  const DigitalSignatureView({super.key});

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive(context);

    return Consumer(
      builder: (_, ref, __) {
        final DigitalSignatureController digitalSignatureController = ref.watch(
          digitalSignatureProvider,
        );
        return Stack(
          children: [
            Scaffold(
              body: Stack(
                children: [
                  SignaturePadW(
                    digitalSignatureController: digitalSignatureController,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      StrokeW(
                        responsive: responsive,
                        digitalSignatureController: digitalSignatureController,
                      ),
                      SizedBox(
                        height: responsive.bhp(20),
                      ),
                      Transform.rotate(
                        angle: pi / 2,
                        child: BtnIconGW(
                          height: responsive.bhp(5),
                          width: responsive.bwh(10),
                          icon: DigitalContractIcons.arrow_rotate_right_solid,
                          onTap: () => clearSignatureImg(),
                        ),
                      ),
                      SizedBox(
                        height: responsive.bhp(1.5),
                      ),
                      Transform.rotate(
                        angle: pi / 2,
                        child: BtnIconGW(
                          height: responsive.bhp(5),
                          width: responsive.bwh(10),
                          icon: DigitalContractIcons.check_solid,
                          onTap: () => saveSignatureImg(context),
                        ),
                      ),
                      SizedBox(
                        height: responsive.bhp(1.5),
                      ),
                    ],
                  ).padding(
                    EdgeInsets.only(
                      left: responsive.bhp(1),
                    ),
                  ),
                ],
              ),
            ),
            RotateIconSplashW(
              responsive: responsive,
              digitalSignatureController: digitalSignatureController,
            ),
          ],
        );
      },
    );
  }
}
