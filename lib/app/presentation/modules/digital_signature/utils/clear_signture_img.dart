import '../controlller/digital_signature_controller.dart';

void clearSignatureImg() {
  final digitalSignatureController = digitalSignatureProvider.read();
  if (digitalSignatureController.signatureGlobalKey == null) {
    return;
  }
  if (digitalSignatureController.signatureGlobalKey!.currentContext == null) {
    return;
  }
  digitalSignatureController.clearSignatureImage();
}
