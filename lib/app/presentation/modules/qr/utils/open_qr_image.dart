import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

Future<void> openQrImage(BuildContext context) async {
  print('// Pick an image.');
  final ImagePicker picker = ImagePicker();
  final XFile? image = await picker.pickImage(
    source: ImageSource.gallery,
  );
  if (image != null) {
    print(image);
  } else {
    print('object');
  }
}
