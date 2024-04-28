import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../domain/failures/sign_in_failure.dart';
import '../../../global/controller/loader/loader_gc.dart';
import '../../../global/utils/keyboard_util.dart';
import '../../../global/widgets/dialogs/dialogs.dart';
import '../../../router/routes/home_route.dart';
import '../controller/sign_in_controller.dart';

void sendLogin(BuildContext context) async {
  final loaderGC = loaderGlobalProvider.read();
  final signInController = signInProvider.read();
  if (signInController.formKey!.currentState!.validate()) {
    KeyboardUtil.unFocusKeyboard();
    loaderGC.showLoader(loading: true);
    final result = await signInController.login();
    loaderGC.showLoader(loading: false);

    result.when(
      left: (failure) {
        if (failure == const SignInFailure.network()) {
          Dialogs.simple(
            context,
            type: DialogType.internet,
            title: 'Error en internet',
            content: 'No hubo respuesta con el servidor',
          );
        } else {
          Dialogs.simple(
            context,
            type: DialogType.error,
            title: 'Error',
            content: 'Hubo un error en el servidor',
          );
        }
      },
      right: (value) => context.pushNamed(
        HomeRoute.path,
      ),
    );
  }
}
