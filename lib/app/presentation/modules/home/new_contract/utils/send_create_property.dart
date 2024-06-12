import 'package:flutter/material.dart';

import '../../../../global/controller/loader/loader_gc.dart';
import '../../../../global/widgets/dialogs/dialogs.dart';
import '../../submodules/property_contracts/controller/property_contract_controller.dart';
import '../controller/new_contract_controller.dart';

void sendCreateProperty(BuildContext context) async {
  final propertyContractController = propertyContractProvider.read();
  final loaderGC = loaderGlobalProvider.read();
  final newContractController = newContractProvider.read();
  loaderGC.showLoader(loading: true);
  final result = await newContractController.createProperty();
  loaderGC.showLoader(loading: false);

  result.when(
    left: (failure) => Dialogs.simple(
      context,
      title: 'Error',
      content: 'Hubo un problema al crear la propiedad',
    ),
    right: (success) {
      Dialogs.simple(
        context,
        type: DialogType.success,
        title: 'Exito',
        content: 'Al crear la propiedad',
        onFunctionAfterOk: () {
          loaderGC.showLoader(loading: true);
          propertyContractController.load(1, 10);
          loaderGC.showLoader(loading: false);
        },
      );
    },
  );
}
