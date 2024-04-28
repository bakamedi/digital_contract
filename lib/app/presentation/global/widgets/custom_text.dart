import 'package:flutter/material.dart';

import '../../../core/responsive/responsive.dart';

class CustomText extends StatelessWidget {
  final String data;
  final double fontSize;
  final Color? color;
  final TextAlign? textAlign;
  final FontWeight? fontWeight;
  final FontStyle? fontStyle;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final int? maxLines;

  const CustomText(
    this.data, {
    super.key,
    this.fontSize = 0,
    this.color,
    this.fontWeight,
    this.fontStyle,
    this.textAlign,
    this.margin,
    this.padding,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive(context);
    final fontSizeLocal = fontSize == 0 ? responsive.dp(1.9) : fontSize;
    return Container(
      margin: margin,
      padding: padding,
      child: Text(
        data,
        textAlign: textAlign,
        maxLines: maxLines,
        softWrap: true,
        style: TextStyle(
          color: color,
          fontWeight: fontWeight,
          fontSize: fontSizeLocal,
          fontStyle: fontStyle,
          wordSpacing: 0.5,
          letterSpacing: 0.5,
        ),
      ),
    );
  }
}
