import 'package:digital_contract/app/presentation/global/extensions/widgets_ext.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/icons/digital_contract_icons.dart';
import 'basic_service_item.dart';

class BasicServices extends StatelessWidget {
  const BasicServices({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Servicios Básicos(Opcional)'),
        const Text(
          'Solo seleccione lo que usted va cubrir lo demás lo cubrira el arrendatario',
        ).padding(
          const EdgeInsets.symmetric(horizontal: 25),
        ),
        const BasicServiceItem(
          selected: true,
          iconData: DigitalContractIcons.faucet_drip_solid,
          name: 'Valor Agua',
        ),
        const BasicServiceItem(
          iconData: DigitalContractIcons.lightbulb_solid,
          name: 'Valor Luz',
        ),
        const BasicServiceItem(
          iconData: DigitalContractIcons.wifi_solid,
          name: 'Valor Internet',
        ),
      ],
    );
  }
}
