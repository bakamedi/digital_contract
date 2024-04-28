import 'package:flutter/material.dart';

import '../../../core/theme/theme_app_data.dart';

class BodyInsideApp extends StatelessWidget {
  final Widget body;
  final Widget? bottomNavigationBar;
  const BodyInsideApp({
    super.key,
    required this.body,
    this.bottomNavigationBar,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeAppData.backgroundLightColor,
      bottomNavigationBar: bottomNavigationBar,
      resizeToAvoidBottomInset: true,
      body: body,
    );
  }
}
