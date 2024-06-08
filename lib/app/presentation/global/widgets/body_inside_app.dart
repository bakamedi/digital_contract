import 'package:flutter/material.dart';

import '../../../core/responsive/responsive.dart';
import '../../../core/theme/theme_app_data.dart';
import '../controller/utils/init_maps.dart';
import 'custom_text.dart';

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
    final responsive = Responsive(context);
    return Scaffold(
      backgroundColor: ThemeAppData.backgroundLightColor,
      bottomNavigationBar: bottomNavigationBar,
      resizeToAvoidBottomInset: true,
      body: body,
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: ThemeAppData.blackColor,
        onPressed: () => initMaps(context),
        label: CustomText(
          'Nuevo',
          fontSize: responsive.dp(1.5),
          color: ThemeAppData.whiteColor,
        ),
        icon: Icon(
          Icons.add,
          color: ThemeAppData.whiteColor,
          size: responsive.dp(2),
        ),
      ),
    );
  }
}
