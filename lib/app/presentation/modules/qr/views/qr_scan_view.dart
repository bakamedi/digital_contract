import 'dart:typed_data';

import 'package:digital_contract/app/core/extensions/widgets_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_meedu/consumer.dart';

import 'package:mobile_scanner/mobile_scanner.dart';

import '../../../../core/icons/digital_contract_icons.dart';
import '../../../../core/responsive/responsive.dart';

import '../../../../core/theme/theme_app_data.dart';
import '../../../global/widgets/buttons/primary_btn.dart';
import '../../../global/widgets/custom_text.dart';
import '../controller/qr_scan_controller.dart';
import '../utils/open_qr_image.dart';
import 'widgets/close_qr_camera.dart';
import 'widgets/error_camera_qr_w.dart';

class QRScanView extends StatelessWidget {
  const QRScanView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive(context);
    return Scaffold(
      body: Stack(
        children: [
          Consumer(
            builder: (_, ref, __) {
              final qrScanController = ref.watch(qrScanProvider);
              return Column(
                children: [
                  SizedBox(
                    height: responsive.bhp(84),
                    child: MobileScanner(
                      controller: qrScanController.mobileScannerController!,
                      errorBuilder: (p0, p1, p2) {
                        return ErrorCameraQrW(
                          responsive: responsive,
                        );
                      },
                      onDetect: (capture) {
                        final List<Barcode> barcodes = capture.barcodes;
                        final Uint8List? image = capture.image;
                        for (final barcode in barcodes) {
                          debugPrint('Barcode found! ${barcode.rawValue}');
                        }
                      },
                    ),
                  ),
                  CustomText(
                    margin: EdgeInsets.symmetric(
                      vertical: responsive.bhp(2),
                    ),
                    'ó busca una imagen en tu dispositivo',
                    fontSize: responsive.dp(1.7),
                  ),
                  PrimaryBtn(
                    verticalSpace: 5,
                    label: 'Buscar Imagen QR',
                    positionBtnIcon: PositionBtnIcon.right,
                    icon: DigitalContractIcons.folder_open_regular,
                    onPressed: () => openQrImage(context),
                  ),
                ],
              );
            },
          ),
          Align(
            heightFactor: 1,
            alignment: Alignment.topLeft,
            child: TextButton(
              child: Icon(
                DigitalContractIcons.xmark_solid,
                size: responsive.dp(2.8),
                color: ThemeAppData.blackColor,
              ),
              onPressed: () => closeQrCamera(context),
            ),
          ).padding(
            EdgeInsets.only(
              top: responsive.bhp(6),
            ),
          ),
        ],
      ),
    );
  }
}
