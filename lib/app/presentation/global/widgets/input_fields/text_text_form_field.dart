import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../core/responsive/responsive.dart';
import '../../../../core/theme/theme_app_data.dart';

/// clase Global para el [TextFormField] con el diseño
/// requerido por FashionPark
/// si falta algun parametro que se desee utilizar en el [TextFormField]
/// se lo puede añadir como un [final] si es obligatorio el campo
/// se utiliza el [required] en el constructor sino se utiliza
/// el simbolo [?] despues del tipo de dato a utilizar
///
/// Ejemplo1: final String? datoNoObligatorio
/// Ejemplo2: final String datoObligatorio
///
class InputTextField extends StatelessWidget {
  final bool? enabled;
  final EdgeInsetsGeometry? margin;
  final bool autofocus;
  final Widget? suffixInput;
  final Widget? prefixIcon;
  final TextDirection? textDirection;
  final AutovalidateMode? autovalidateMode;
  final FocusNode? focusNode;
  final int? maxLength;
  final bool? obscureText;
  final List<TextInputFormatter>? inputFormatters;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final String backgroundText;
  final TextInputAction? textInputAction;
  final int? maxLines;
  final String obscuringCharacter;
  final TextAlign textAlign;
  final bool readOnly;
  final bool? activeBackgroundColor;
  final Function()? onFieldSubmitted;
  final Function(String) onChanged;
  final Function()? onTap;
  final String? Function(String?)? validator;
  final TextCapitalization textCapitalization;
  const InputTextField({
    super.key,
    required this.backgroundText,
    required this.onChanged,
    this.autofocus = false,
    this.suffixInput,
    this.textDirection,
    this.autovalidateMode,
    this.focusNode,
    this.obscureText = false,
    this.maxLength = 100,
    this.obscuringCharacter = '•',
    this.controller,
    this.keyboardType,
    this.inputFormatters,
    this.textInputAction,
    this.onFieldSubmitted,
    this.maxLines = 1,
    this.textAlign = TextAlign.start,
    this.readOnly = false,
    this.onTap,
    this.validator,
    this.prefixIcon,
    this.margin,
    this.activeBackgroundColor = false,
    this.textCapitalization = TextCapitalization.none,
    this.enabled,
  });

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive(context);

    return Container(
      margin: margin,
      child: Container(
        margin: EdgeInsets.symmetric(
          vertical: responsive.hp(0.5),
          horizontal: responsive.wp(5),
        ),
        decoration: _decorationTextFormField(),
        child: TextFormField(
          enabled: enabled,
          readOnly: readOnly,
          obscuringCharacter: obscuringCharacter,
          textAlign: textAlign,
          autofocus: autofocus,
          textDirection: textDirection,
          autovalidateMode: autovalidateMode,
          focusNode: focusNode,
          maxLength: maxLength,
          maxLines: maxLines,
          obscureText: obscureText!,
          controller: controller,
          keyboardType: keyboardType,
          inputFormatters: inputFormatters,
          style: TextStyle(
            fontFamily: 'Lato',
            color: ThemeAppData.blackColor,
          ),
          decoration: _simpleInput(
            context,
            backgroundText,
            suffix: suffixInput,
            prefixIcon: prefixIcon,
            activeBackgroundColor: activeBackgroundColor,
          ),
          textCapitalization: textCapitalization,
          textInputAction: textInputAction,
          onFieldSubmitted: (value) {
            try {
              onFieldSubmitted!();
            } catch (_) {}
          },
          onChanged: (value) {
            onChanged(value);
          },
          onTap: () {
            try {
              onTap!();
            } catch (_) {}
          },
          validator: (value) {
            try {
              return validator!(value);
            } catch (_) {
              return null;
            }
          },
        ),
      ),
    );
  }
}

/// Diseño global para el [Container] de afuera del [TextFormField]
/// En donde se da el color blanco de fondo y los bordes redondeados
/// Con la sombra de atras
BoxDecoration _decorationTextFormField() {
  return BoxDecoration(
    borderRadius: BorderRadius.circular(12.0),
  );
}

/// Diseño global para el [TextFormField]
/// En donde se da el color con esta en [Focus] y un tamaño
/// dependiendo de la altura de la pantalla
InputDecoration _simpleInput(
  BuildContext context,
  String hintText, {
  bool? activeBackgroundColor,
  Widget? suffix,
  Widget? prefixIcon,
}) {
  return InputDecoration(
    suffixIcon: Padding(
      padding: EdgeInsets.only(
        right: MediaQuery.of(context).size.height * 0.02,
      ),
      child: suffix,
    ),
    hintStyle: TextStyle(
      fontFamily: 'Lato',
      color: ThemeAppData.grayBackIconColor,
    ),
    prefixIcon: prefixIcon,
    prefixIconColor: ThemeAppData.grayBackIconColor,
    counterText: '',
    isDense: true,
    filled: true,
    fillColor: ThemeAppData.whiteColor,
    hintText: hintText,
    suffixIconConstraints: const BoxConstraints(
      minWidth: 2,
      minHeight: 2,
    ),
    contentPadding: EdgeInsets.only(
      top: MediaQuery.of(context).size.height * 0.025,
      left: 15,
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12.0),
      borderSide: BorderSide.none,
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12.0),
      borderSide: BorderSide(
        color: ThemeAppData.redErrorColor,
        width: 2.0,
      ),
    ),
    enabledBorder: activeBackgroundColor!
        ? OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: BorderSide(
              color: ThemeAppData.blackColor,
              width: 2.0,
            ),
          )
        : null,
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12.0),
      borderSide: BorderSide(
        color: ThemeAppData.blackColor,
        width: 2.0,
      ),
    ),
  );
}
