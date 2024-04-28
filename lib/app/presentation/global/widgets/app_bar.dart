import 'package:flutter/material.dart';

import '../../../core/responsive/responsive.dart';
import '../../../core/theme/theme_app_data.dart';
import 'custom_text.dart';

/// Menu global para las paginas de la barra de navegación
AppBar globalAppBar(
  BuildContext context, {
  String? title,
  bool centerTitle = true,
  double elevation = 0,
  Widget? leading,
  bool backButton = true,
  bool close = false,
  bool automaticallyImplyLeading = true,
  Color? backgroundColor,
  List<Widget>? actions,
  void Function()? onPressedLeading,
}) {
  final Responsive responsive = Responsive(context);
  return AppBar(
    title: _title(
      responsive,
      title,
    ),
    automaticallyImplyLeading: automaticallyImplyLeading,
    centerTitle: centerTitle,
    backgroundColor: ThemeAppData.transparentColor,
    elevation: elevation,
  );
}

Widget _title(
  Responsive responsive,
  String? title,
) {
  return CustomText(
    title ?? '',
    fontSize: responsive.dp(2.1),
    color: ThemeAppData.blackColor,
  );
}
