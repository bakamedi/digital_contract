import 'package:digital_contract/app/core/theme/theme_app_data.dart';
import 'package:digital_contract/app/presentation/global/extensions/widgets_ext.dart';
import 'package:flutter/material.dart';

import '../../../../core/responsive/responsive.dart';

/// Posicion izquierda o derecha del icono dentro del btn
enum PositionBtnIcon {
  none,
  left,
  right,
}

/// Boton Rojo si existe un icono ese los reemplaza con el otro
/// boton y se le tiene que dar un tamaño porque el defecto es
/// de 15 y deberia de tomar un tamaño correspondiente al de la pantall
class PrimaryBtn extends StatelessWidget {
  final String label;
  final IconData? icon;
  final double? iconSize;
  final double fontSize;
  final ButtonStyle? style;
  final double horizontalSpace;
  final double verticalSpace;
  final PositionBtnIcon positionBtnIcon;
  final void Function()? onPressed;

  const PrimaryBtn({
    super.key,
    required this.label,
    required this.onPressed,
    this.fontSize = 0,
    this.style,
    this.iconSize,
    this.icon,
    this.horizontalSpace = 20.0,
    this.verticalSpace = 1,
    this.positionBtnIcon = PositionBtnIcon.none,
  });

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive(context);
    final fontSizeResponsive = responsive.dp(1.7);
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: verticalSpace,
        horizontal: horizontalSpace,
      ),
      width: double.infinity,
      child: icon == null
          ? _btn(fontSizeResponsive)
          : _iconBtn(
              icon,
              fontSizeResponsive,
              positionBtnIcon,
            ),
    );
  }

  Widget _btn(double fontSize) {
    return ElevatedButton(
      onPressed: onPressed,
      style: style,
      child: Text(
        label,
        style: TextStyle(
          fontSize: fontSize,
        ),
      ).padding(
        const EdgeInsets.symmetric(vertical: 12),
      ),
    );
  }

  Widget _iconBtn(
    IconData? icon,
    double fontSize,
    PositionBtnIcon positionBtnIcon,
  ) {
    if (positionBtnIcon == PositionBtnIcon.left) {
      return ElevatedButton.icon(
        icon: Icon(
          icon,
          color: ThemeAppData.whiteColor,
          size: fontSize,
        ),
        onPressed: onPressed,
        label: Text(
          label,
          style: TextStyle(
            fontSize: fontSize,
          ),
        ).padding(
          const EdgeInsets.symmetric(vertical: 12),
        ),
      );
    } else if (positionBtnIcon == PositionBtnIcon.right) {
      return ElevatedButton(
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              label,
              style: TextStyle(
                fontSize: fontSize,
              ),
            ),
            5.w,
            Icon(
              icon,
              size: fontSize,
            ),
          ],
        ).padding(
          const EdgeInsets.symmetric(vertical: 12),
        ),
      );
    } else {
      return _btn(fontSize);
    }
  }
}
