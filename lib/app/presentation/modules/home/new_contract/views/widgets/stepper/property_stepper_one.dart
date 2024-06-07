import 'package:flutter/material.dart';

import '../../../../../../../core/responsive/responsive.dart';
import '../../../controller/new_contract_controller.dart';
import '../basic_services.dart';
import '../owner_services.dart';

class PropertyStepperOne extends StatelessWidget {
  final Responsive responsive;
  final NewContractController newContractController;
  const PropertyStepperOne({
    super.key,
    required this.responsive,
    required this.newContractController,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          OwnerServices(
            newContractController: newContractController,
          ),
          BasicServices(
            newContractController: newContractController,
          ),
        ],
      ),
    );
  }
}
