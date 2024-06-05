import 'package:digital_contract/app/presentation/global/extensions/widgets_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_meedu/consumer.dart';

import '../../../../../core/responsive/responsive.dart';
import '../../../../global/widgets/buttons/primary_btn.dart';
import '../../controller/sign_in_controller.dart';
import '../../utils/send_login.dart';
import 'sign_in_form_w.dart';
import 'sign_in_go_to_register.dart';
import 'sign_in_qr_scan_w.dart';
import 'sign_in_title_w.dart';

class SignInPagesW extends StatelessWidget {
  final Responsive responsive;
  const SignInPagesW({
    super.key,
    required this.responsive,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (_, ref, __) {
        final signInController = ref.watch(signInProvider);
        return Column(
          children: [
            SignInTitleW(
              responsive: responsive,
              title: 'Ingresa con tu correo y contraseña',
              subTitle:
                  'Por favor ingresa con tu correo eléctronico y contraseña correctamente',
            ),
            SignInFormW(
              responsive: responsive,
              signInController: signInController,
            ),
            Container(
              margin: EdgeInsets.only(
                bottom: responsive.bhp(2),
              ),
              child: PrimaryBtn(
                verticalSpace: responsive.bhp(4),
                label: 'Ingresar',
                onPressed: () => sendLogin(context),
              ),
            ),
            SignUpGoRegisterW(
              responsive: responsive,
            ),
            SignInQrScanW(
              responsive: responsive,
            ),
          ],
        ).padding(
          EdgeInsets.only(
            top: responsive.bhp(10),
          ),
        );
      },
    );
  }
}
