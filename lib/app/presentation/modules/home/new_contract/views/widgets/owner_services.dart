import 'package:flutter/material.dart';

import '../../../../../../core/icons/digital_contract_icons.dart';
import '../../../../../global/widgets/input_fields/text_text_form_field.dart';

class OwnerServices extends StatelessWidget {
  const OwnerServices({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Datos Arrendador'),
        InputTextField(
          backgroundText: 'Nombre del Arrendador',
          prefixIcon: const Icon(
            DigitalContractIcons.building_user_solid,
          ),
          onChanged: (value) {},
        ),
        InputTextField(
          backgroundText: 'Teléfono',
          prefixIcon: const Icon(
            DigitalContractIcons.phone_solid,
          ),
          onChanged: (value) {},
        ),
        InputTextField(
          backgroundText: 'Ciudad',
          prefixIcon: const Icon(
            DigitalContractIcons.city_solid,
          ),
          onChanged: (value) {},
        ),
        InputTextField(
          backgroundText: 'Ubicación',
          prefixIcon: const Icon(
            DigitalContractIcons.map_location_dot_solid,
          ),
          onChanged: (value) {},
        ),
        InputTextField(
          backgroundText: 'Valor del departamento/casa',
          prefixIcon: const Icon(
            DigitalContractIcons.house_solid,
          ),
          onChanged: (value) {},
        ),
      ],
    );
  }
}
