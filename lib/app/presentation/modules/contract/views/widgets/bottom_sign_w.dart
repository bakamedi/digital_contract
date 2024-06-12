import 'dart:io';

import 'package:digital_contract/app/core/extensions/widgets_ext.dart';
import 'package:flutter/material.dart';

import '../../../../../core/responsive/responsive.dart';
import '../../../../../core/theme/theme_app_data.dart';
import '../../../../global/widgets/signature/signature_image_gw.dart';

class BottomSignW extends StatelessWidget {
  final Responsive responsive;
  final String landLord;
  final String lessee;
  final String signLandlordType;
  final String signLesseeType;
  final File signatureFileLandLord;

  const BottomSignW({
    super.key,
    required this.responsive,
    required this.landLord,
    required this.lessee,
    required this.signLandlordType,
    required this.signLesseeType,
    required this.signatureFileLandLord,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _itemSign(
            responsive,
            sign: 'Bakke Medina Andres Abarca',
            signFontSize: responsive.dp(2.5),
            signType: 'RolestSignature',
            name: 'Arrendador',
            signatureFile: signatureFileLandLord,
          ),
          _itemSign(
            responsive,
            sign: 'Christian Campodonico Durango',
            signFontSize: responsive.dp(3.1),
            signType: 'NovithaScriptSignature',
            name: 'Arrendatario',
            signatureFile: signatureFileLandLord,
          ),
        ],
      ),
    );
  }

  Widget _itemSign(
    Responsive responsive, {
    required String sign,
    required double signFontSize,
    required String signType,
    required String name,
    required File signatureFile,
  }) {
    return Flexible(
      child: Column(
        children: [
          SignatureImageGW(
            responsive: responsive,
            signatureFile: signatureFile,
            backgroundColor: ThemeAppData.transparentColor,
          ),
          /*
          Text(
            sign,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: ThemeAppData.blackColor,
              fontFamily: signType,
              fontSize: signFontSize,
            ),
          ),
          */
          const Text('_____________________'),
          Text(
            name,
            style: TextStyle(
              color: ThemeAppData.blackColor,
              fontWeight: FontWeight.w600,
              fontSize: responsive.dp(1.5),
            ),
          ),
        ],
      ).padding(
        EdgeInsets.symmetric(
          vertical: responsive.bhp(2),
        ),
      ),
    );
  }
}
