import 'package:flutter/material.dart';

import '../../../core/responsive/responsive.dart';
import '../../../core/theme/theme_app_data.dart';
import '../../modules/home/views/controller/home_controller.dart';
import '../../router/routes/home_route.dart';
import '../controller/utils/init_maps.dart';
import '../widgets/custom_text.dart';

Widget actionBtn(BuildContext context, Responsive responsive) {
  final homeController = homeProvider.read();
  if (homeController.currentPagePath != HomeRoute.path) {
    return Container();
  }
  return FloatingActionButton.extended(
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
  );
}
