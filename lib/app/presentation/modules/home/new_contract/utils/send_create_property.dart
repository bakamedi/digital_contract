import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../global/controller/loader/loader_gc.dart';
import '../../../../global/widgets/dialogs/dialogs.dart';
import '../controller/new_contract_controller.dart';

void sendCreateProperty(BuildContext context) async {
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
        onFunctionAfterOk: () => context.pop(),
      );
    },
  );
}