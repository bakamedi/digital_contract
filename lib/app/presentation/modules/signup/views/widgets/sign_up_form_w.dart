import 'package:digital_contract/app/core/extensions/widgets_ext.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/responsive/responsive.dart';
import '../../../../global/widgets/buttons/primary_btn.dart';
import '../../../../global/widgets/forms/title_form_w.dart';
import '../../../../global/widgets/input_fields/text_text_form_field.dart';
import '../../../../router/routes/digital_signature_route.dart';
import '../../../home/submodules/profile/widgets/form_identification_w.dart';

import 'sign_up_type_w.dart';
import 'terms_and_condition_w.dart';

class SignUpFormW extends StatelessWidget {
  final Responsive responsive;
  const SignUpFormW({
    super.key,
    required this.responsive,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleFormW(
          responsive: responsive,
          title: 'Nombre Completo',
        ),
        InputTextField(
          backgroundText: 'Escríba su nombre completo aquí',
          onChanged: (value) {},
        ),
        TitleFormW(
          responsive: responsive,
          title: 'Número de teléfono',
        ),
        InputTextField(
          backgroundText: 'Escríba su número teléfonico aquí',
          onChanged: (value) {},
        ),
        FormIdentificationW(
          responsive: responsive,
          title: 'Tipo de identificación',
        ),
        TitleFormW(
          responsive: responsive,
          title: 'Correo ',
        ),
        InputTextField(
          backgroundText: 'Escríba su número correo electronico',
          onChanged: (value) {},
        ),
        TitleFormW(
          responsive: responsive,
          title: 'Tipo de Usuario',
        ),
        const SignUpTypeW(),
        TitleFormW(
          responsive: responsive,
          title: 'Contraseña',
        ),
        InputTextField(
          backgroundText: 'Escríba su contraseña aquí',
          onChanged: (value) {},
        ),
        TitleFormW(
          responsive: responsive,
          title: 'Confirmar Contraseña',
        ),
        InputTextField(
          backgroundText: 'Escríba su contraseña nuevamente aquí',
          onChanged: (value) {},
        ),
        TermsAndConditionW(
          responsive: responsive,
        ),
        PrimaryBtn(
          label: 'Registrar',
          onPressed: () => context.pushNamed(
            DigitalSignatureRoute.path,
          ),
        ).padding(
          EdgeInsets.only(
            top: responsive.bhp(3),
            bottom: responsive.bhp(10),
          ),
        ),
      ],
    );
  }
}
