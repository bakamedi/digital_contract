import 'package:flutter/material.dart';

import '../../../../../../core/icons/digital_contract_icons.dart';
import '../../../../../../core/responsive/responsive.dart';
import '../../../../../global/widgets/input_fields/text_text_form_field.dart';
import '../../../../../global/widgets/maps/maps_gw.dart';
import '../../controller/new_contract_controller.dart';
import '../../utils/update_field_property.dart';

class OwnerServices extends StatelessWidget {
  final Responsive responsive;
  final NewContractController newContractController;

  const OwnerServices({
    super.key,
    required this.responsive,
    required this.newContractController,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          InputTextField(
            onChanged: (value) => newContractController.onChangeField(
              UpdateFieldProperty.city,
              value,
            ),
            backgroundText: 'Ciudad',
            prefixIcon: const Icon(
              DigitalContractIcons.city_solid,
            ),
          ),
          InputTextField(
            onChanged: (value) => newContractController.onChangeField(
              UpdateFieldProperty.province,
              value,
            ),
            backgroundText: 'Provincia',
            prefixIcon: const Icon(
              DigitalContractIcons.circle_question_regular,
            ),
          ),
          InputTextField(
            onChanged: (value) => newContractController.onChangeField(
              UpdateFieldProperty.address,
              value,
            ),
            backgroundText: 'Ubicación',
            prefixIcon: const Icon(
              DigitalContractIcons.map_location_dot_solid,
            ),
          ),
          MapsGW(
            onTapLatLng: (latLng) => newContractController.onChangeField(
              UpdateFieldProperty.latLng,
              '',
              latLng: latLng,
            ),
          ),
        ],
      ),
    );
  }
}
