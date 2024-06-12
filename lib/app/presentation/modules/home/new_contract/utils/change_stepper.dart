import 'package:flutter/material.dart';

import '../controller/new_contract_controller.dart';
import 'send_create_property.dart';

void changeStepper(BuildContext context) {
  final newContractController = newContractProvider.read();
  const duration = Duration(milliseconds: 500);
  const curve = Curves.ease;
  final page = newContractController.stepperContractController!.page;
  if (page == 2.0) {
    sendCreateProperty(context);
  } else {
    newContractController.stepperContractController!.nextPage(
      duration: duration,
      curve: curve,
    );
  }
}
