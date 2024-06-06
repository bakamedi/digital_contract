import 'package:flutter/material.dart';

import '../basic_services.dart';
import '../owner_services.dart';

class PropertyStepperOne extends StatelessWidget {
  const PropertyStepperOne({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          OwnerServices(),
          BasicServices(),
        ],
      ),
    );
  }
}
