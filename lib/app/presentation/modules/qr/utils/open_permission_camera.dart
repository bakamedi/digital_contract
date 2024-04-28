import 'package:permission_handler/permission_handler.dart';

void openPermissionCamera() async {
  try {
    await Permission.camera.onDeniedCallback(() {
      // Your code
    }).onGrantedCallback(() {
      // Your code
    }).onPermanentlyDeniedCallback(() {
      // Your code
    }).onRestrictedCallback(() {
      // Your code
    }).onLimitedCallback(() {
      // Your code
    }).onProvisionalCallback(() {
      // Your code
    }).request();
  } catch (e) {
    print(e);
  }
}
