import 'package:url_launcher/url_launcher.dart';

void openExternalApp({required String path}) async {
  try {
    final Uri url = Uri(
      scheme: 'tel',
      path: path,
    );
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  } catch (e) {
    print(e);
  }
}
