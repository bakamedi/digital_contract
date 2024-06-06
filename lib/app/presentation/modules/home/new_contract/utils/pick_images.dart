// ignore_for_file: use_build_context_synchronously

import 'package:digital_contract/app/presentation/global/widgets/dialogs/dialogs.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../controller/new_contract_controller.dart';

Future<void> pickImages(BuildContext context) async {
  final newContractController = newContractProvider.read();
  final ImagePicker picker = ImagePicker();
  List<XFile> images = await picker.pickMultiImage(
    limit: 5 - newContractController.gallery.length,
  );
  if (images.length > 6) {
    Dialogs.simple(
      context,
      title: 'Imagenes',
      content: 'No se puede subir mas de 5 imagenes',
    );
  } else if (images.isNotEmpty) {
    newContractController.addAllImage(images);
  }
}
