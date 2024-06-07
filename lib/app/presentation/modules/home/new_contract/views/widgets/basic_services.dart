import 'package:flutter/material.dart';

import '../../../../../../core/icons/digital_contract_icons.dart';
import '../../../../../global/extensions/widgets_ext.dart';
import '../../controller/new_contract_controller.dart';
import '../../utils/service.enum.dart';
import 'basic_service_item.dart';

class BasicServices extends StatelessWidget {
  final NewContractController newContractController;

  const BasicServices({
    super.key,
    required this.newContractController,
  });

  @override
  Widget build(BuildContext context) {
    final services = newContractController.services;
    return Column(
      children: [
        const Text('Servicios Básicos(Opcional)'),
        const Text(
          'Solo seleccione lo que usted va cubrir lo demás lo cubrira el arrendatario',
        ).padding(
          const EdgeInsets.symmetric(horizontal: 25),
        ),
        BasicServiceItem(
          onTap: () => newContractController.changeServiceValue(
            ServiceType.water,
          ),
          selected: services[ServiceType.water.index],
          iconData: DigitalContractIcons.faucet_drip_solid,
          name: 'Valor Agua',
        ),
        BasicServiceItem(
          onTap: () => newContractController.changeServiceValue(
            ServiceType.electricity,
          ),
          selected: services[ServiceType.electricity.index],
          iconData: DigitalContractIcons.lightbulb_solid,
          name: 'Valor Luz',
        ),
        BasicServiceItem(
          onTap: () => newContractController.changeServiceValue(
            ServiceType.internet,
          ),
          selected: services[ServiceType.internet.index],
          iconData: DigitalContractIcons.wifi_solid,
          name: 'Valor Internet',
        ),
      ],
    );
  }
}
