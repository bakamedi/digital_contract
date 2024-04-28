import 'package:flutter/material.dart';

import '../../../core/theme/theme_app_data.dart';

/// Icono de progreso de Android
Widget circularProgressAndroid({
  Color? color,
  double? size,
  double? strokeWidth,
}) {
  return Center(
    child: SizedBox(
      height: size ?? 30,
      width: size ?? 30,
      child: CircularProgressIndicator.adaptive(
        backgroundColor: color ?? ThemeAppData.blackColor,
        strokeWidth: strokeWidth ?? 4,
      ),
    ),
  );
}
