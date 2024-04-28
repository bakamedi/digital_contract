import 'package:digital_contract/app/presentation/global/extensions/widgets_ext.dart';
import 'package:flutter/material.dart';

import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';

import '../../../../../core/responsive/responsive.dart';
import '../../controller/sign_in_controller.dart';
import 'otp_resend_w.dart';
import 'sign_in_title_w.dart';

class OtpFormW extends StatelessWidget {
  final Responsive responsive;
  final SignInController signInController;

  const OtpFormW({
    super.key,
    required this.responsive,
    required this.signInController,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SignInTitleW(
          responsive: responsive,
          title: 'Verificación OTP',
          subTitle: 'Ingresa el código OTP enviado a tu teléfono',
          phone: '+593dssdsds',
        ),
        OTPTextField(
          length: 4,
          width: responsive.width,
          fieldWidth: responsive.wp(12),
          contentPadding: EdgeInsets.only(
            top: responsive.bhp(2.5),
          ),
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: responsive.dp(1.5),
          ),
          textFieldAlignment: MainAxisAlignment.spaceEvenly,
          fieldStyle: FieldStyle.box,
          otpFieldStyle: OtpFieldStyle(),
          onChanged: (value) {},
          onCompleted: (pin) {},
        ).padding(
          EdgeInsets.only(
            top: responsive.bhp(5),
            left: responsive.bwh(5),
            right: responsive.bwh(5),
          ),
        ),
        OtpResendW(
          responsive: responsive,
        ),
      ],
    );
  }
}
