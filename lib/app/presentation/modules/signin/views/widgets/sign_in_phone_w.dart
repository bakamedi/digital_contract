import 'package:flutter/material.dart';

import '../../../../../core/responsive/responsive.dart';
import '../../controller/sign_in_controller.dart';
import 'sign_in_form_w.dart';
import 'sign_in_title_w.dart';

class SignInPhoneW extends StatelessWidget {
  final Responsive responsive;
  final SignInController signInController;
  const SignInPhoneW({
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
          title: 'Ingresa con tu correo y contraseña',
          subTitle:
              'Por favor ingresa con tu correo eléctronico y contraseña correctamente',
        ),
        SignInFormW(
          responsive: responsive,
          signInController: signInController,
        ),
      ],
    );
  }
}
