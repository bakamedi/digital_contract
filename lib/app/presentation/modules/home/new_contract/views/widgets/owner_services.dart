import 'package:flutter/material.dart';

import '../../../../../../core/icons/digital_contract_icons.dart';
import '../../../../../../core/responsive/responsive.dart';
import '../../../../../global/widgets/input_fields/text_text_form_field.dart';
import '../../../../../global/widgets/maps/maps_gw.dart';
import '../../controller/new_contract_controller.dart';

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
    return CustomScrollView(
      shrinkWrap: true,
      slivers: [
        SliverToBoxAdapter(
          child: InputTextField(
            backgroundText: 'Ciudad',
            prefixIcon: const Icon(
              DigitalContractIcons.city_solid,
            ),
            onChanged: (value) {},
          ),
        ),
        SliverToBoxAdapter(
          child: InputTextField(
            backgroundText: 'Ubicación',
            prefixIcon: const Icon(
              DigitalContractIcons.map_location_dot_solid,
            ),
            onChanged: (value) {},
          ),
        ),
        const SliverToBoxAdapter(
          child: MapsGW(),
        ),
      ],
    );
  }
}
