import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../router/routes/home_route.dart';
import '../controlller/digital_signature_controller.dart';

void saveSignatureImg(BuildContext context) async {
  final digitalSignatureController = digitalSignatureProvider.read();
  await digitalSignatureController.saveSignatureImage();
  context.pushReplacementNamed(HomeRoute.path);
}
