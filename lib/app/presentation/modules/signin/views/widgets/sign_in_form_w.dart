import 'package:digital_contract/app/core/icons/digital_contract_icons.dart';
import 'package:flutter/material.dart';

import '../../../../../core/responsive/responsive.dart';
import '../../../../global/utils/user_validator.dart';
import '../../../../global/widgets/forms/title_form_w.dart';
import '../../../../global/widgets/input_fields/text_text_form_field.dart';
import '../../controller/sign_in_controller.dart';

class SignInFormW extends StatelessWidget {
  final Responsive responsive;
  final SignInController signInController;

  const SignInFormW({
    super.key,
    required this.responsive,
    required this.signInController,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      key: signInController.formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TitleFormW(
            responsive: responsive,
            title: 'Correo eléctronico',
          ),
          InputTextField(
            backgroundText: 'Ingrese aquí el correo eléctronico',
            keyboardType: TextInputType.emailAddress,
            onChanged: signInController.onChangeEmail,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: UserValidator.isEmail,
          ),
          TitleFormW(
            responsive: responsive,
            title: 'Contraseña',
          ),
          InputTextField(
            backgroundText: 'Ingrese aquí tu contraseña',
            keyboardType: TextInputType.visiblePassword,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            obscureText: signInController.obscurePassword,
            suffixInput: InkWell(
              onTap: signInController.changeVisiblePassword,
              child: Icon(
                signInController.obscurePassword
                    ? DigitalContractIcons.eye_solid
                    : DigitalContractIcons.eye_slash_solid,
              ),
            ),
            validator: UserValidator.passwordValidator,
            onChanged: signInController.onChangePassword,
          )
        ],
      ),
    );
  }
}
