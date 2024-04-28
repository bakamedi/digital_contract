import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../router/routes/contract_route.dart';
import '../../../contract/controller/contract_controller.dart';

void goToContract(BuildContext context) async {
  final ContractController contractController = contractProvider.read();
  await contractController.loadSignaturesFiles(
    landLord: 'my_signature',
    lesse: 'my_signature',
  );
  if (context.mounted) {
    context.pushNamed(ContractRoute.path);
  }
}
