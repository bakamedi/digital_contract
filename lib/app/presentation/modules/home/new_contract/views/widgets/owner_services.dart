import 'package:flutter/material.dart';

import '../../../../../../core/icons/digital_contract_icons.dart';
import '../../../../../global/widgets/input_fields/text_text_form_field.dart';
import '../../controller/new_contract_controller.dart';

class OwnerServices extends StatelessWidget {
  final NewContractController newContractController;

  const OwnerServices({
    super.key,
    required this.newContractController,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
          backgroundText: 'Teléfono',
          prefixIcon: const Icon(
            DigitalContractIcons.phone_solid,
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
