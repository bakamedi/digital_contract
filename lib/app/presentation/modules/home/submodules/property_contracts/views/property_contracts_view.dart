import 'package:flutter/material.dart';
import 'package:flutter_meedu/consumer/consumer_widget.dart';

import '../controller/property_contract_controller.dart';
import 'widgets/contract_item.dart';

const radiusCircular = Radius.circular(10);

class PropertyContractsView extends ConsumerWidget {
  const PropertyContractsView({
    super.key,
  });

  @override
  Widget build(BuildContext context, ref) {
    final propertyContractController = ref.watch(
      propertyContractProvider,
    );

    return SliverList.builder(
      itemCount: propertyContractController.properties.length,
      itemBuilder: (_, index) {
        return ContractItem(
          property: propertyContractController.properties[index],
        );
      },
    );
  }
}
