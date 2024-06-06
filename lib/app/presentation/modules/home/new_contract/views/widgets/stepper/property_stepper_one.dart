import 'package:flutter/material.dart';

import '../../../../../../global/widgets/buttons/primary_btn.dart';
import '../basic_services.dart';
import '../owner_services.dart';

class PropertyStepperOne extends StatelessWidget {
  const PropertyStepperOne({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const OwnerServices(),
          const BasicServices(),
          PrimaryBtn(
            label: 'Crear nuevo contrato',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
