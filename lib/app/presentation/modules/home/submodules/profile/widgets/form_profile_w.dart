import 'package:digital_contract/app/presentation/global/extensions/widgets_ext.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/responsive/responsive.dart';
import 'form_identification_w.dart';
import 'form_profile_item_w.dart';

class FormProfileW extends StatelessWidget {
  final Responsive responsive;
  const FormProfileW({
    super.key,
    required this.responsive,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          FormProfileItemW(
            responsive: responsive,
            title: 'Nombre Completo',
            backgroundText: 'Escribe aquí tu nombre',
          ),
          FormProfileItemW(
            responsive: responsive,
            title: 'Email',
            backgroundText: 'Escribe aquí tu correo',
          ),
          FormProfileItemW(
            responsive: responsive,
            title: 'Dirección',
            backgroundText: 'Escribe aquí tu dirección',
          ),
          FormIdentificationW(
            responsive: responsive,
            title: 'Tipo de identificación',
          ),
          FormProfileItemW(
            responsive: responsive,
            title: 'Contraseña',
            backgroundText: 'Escribe aquí tu contraseña',
          ),
          FormProfileItemW(
            responsive: responsive,
            title: 'Confirma la Contraseña',
            backgroundText: 'Escribe aquí de nuevo la contraseña',
          ).padding(
            EdgeInsets.only(
              bottom: responsive.bhp(10),
            ),
          ),
        ],
      ),
    );
  }
}
