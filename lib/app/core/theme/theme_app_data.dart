import 'package:flutter/material.dart';

import 'material_color.dart';

/// Clase [ThemeColor] para los colores de la aplicacion
/// Si se desea poner un color directamente de [Colors] se añade aqui
abstract class ThemeAppData {
  ThemeAppData._();
  static ThemeData lightTheme = ThemeData(
    primarySwatch: generateMaterialColor(_primaryLightColor),
    elevatedButtonTheme: _elevatedButtonThemeData(_primaryLightColor),
  );

  static ThemeData darkTheme = ThemeData(
    primarySwatch: generateMaterialColor(_primaryDarkColor),
    elevatedButtonTheme: _elevatedButtonThemeData(_primaryDarkColor),
  );

  static Color get primaryLightColor => _primaryLightColor;
  static Color get primaryDarkColor => _primaryDarkColor;
  static Color get transparentColor => _transparentColor;
  static Color get whiteColor => _whiteColor;
  static Color get blackColor => _blackColor;
  static Color get redErrorColor => _redErrorColor;
  static Color get greyTextColor => _greyTextColor;

  static Color get fontGreyColor => _fontGreyColor;
  static Color get darkGreyColor => _darkGreyColor;
  static Color get grayColor => _grayColor;
  static Color get grayBackIconColor => _grayBackIconColor;
  static Color get greyOtpTextColor => _greyOtpTextColor;
  static Color get shimmerOneGreyColor => _shimmerOneGreyColor;
  static Color get shimmerTwoGreyColor => _shimmerTwoGreyColor;
  static Color get primaryLightColor100 => _primaryLightColor100;
  static Color get primaryLightColor200 => _primaryLightColor200;
  static Color get primaryLightColor300 => _primaryLightColor300;
  static Color get primaryLightColor400 => _primaryLightColor400;
  static Color get backgroundCardColor => _backgroundCardColor;
  static Color get backgroundCard2Color => _backgroundCard2Color;
  static Color get backgroundCard3Color => _backgroundCard3Color;
  static Color get greenDoneColor => _greenDoneColor;

  static Color get primaryLightColor600 => _primaryLightColor600;
  static Color get primaryLightColor700 => _primaryLightColor700;
  static Color get primaryLightColor800 => _primaryLightColor800;
  static Color get inactiveIconColor => _inactiveIconColor;
  static Color get backgroundChatColor => _backgroundChatColor;
  static Color get backgroundLightColor => _backgroundLightColor;
  static Color get backgroundChatInputColor => _backgroundChatInputColor;
  static Color get blueColor => _blueColor;
  static Color get pendingColor => _pendingColor;
  static const Color greyBtnColor = _greyBtnColor;

  static final Color _primaryLightColor = HexColor('#2962DD');
  static final Color _primaryDarkColor = HexColor('#1F2933');
  static final Color _fontGreyColor = HexColor('#95999c');
  static final Color _darkGreyColor = HexColor('#C3C8CC');
  static final Color _redErrorColor = HexColor('#ED4337');
  static const Color _grayColor = Colors.grey;
  static final Color _grayBackIconColor = HexColor('#BABDC3');
  static final Color _greenDoneColor = HexColor('#37763b');
  static final Color _greyTextColor = HexColor('#F7FAFE');
  static final Color _greyOtpTextColor = HexColor('#F3F3F3');
  static final Color _primaryLightColor800 = HexColor('#2b93a8');
  static final Color _primaryLightColor700 = HexColor('#29A8CA');
  static final Color _primaryLightColor600 = HexColor('#30B1D0');
  static final Color _inactiveIconColor = HexColor('#545454');
  static final Color _primaryLightColor100 = HexColor('#C3EAF2');
  static final Color _primaryLightColor200 = HexColor('#9BDCEA');
  static final Color _primaryLightColor300 = HexColor('#72CDE2');
  static final Color _primaryLightColor400 = HexColor('#54C3DB');
  static final Color _backgroundCardColor = HexColor('#f9f9f9');
  static final Color _backgroundCard2Color = HexColor('#F6F6FB');
  static final Color _backgroundCard3Color = HexColor('#F6F7FB');
  static final Color _backgroundChatColor = HexColor('#F5F6FB');
  static final Color _backgroundChatInputColor = HexColor('#F4F5F6');

  static final Color _shimmerOneGreyColor = Colors.grey.shade300;
  static final Color _shimmerTwoGreyColor = Colors.grey.shade100;

  static const Color _greyColor = Colors.grey;
  static const Color _whiteColor = Colors.white;
  static const Color _blackColor = Colors.black;
  static const Color _blueColor = Color.fromARGB(255, 28, 140, 231);
  static const Color _pendingColor = Color.fromARGB(255, 243, 189, 82);
  static const Color _greyBtnColor = Color.fromARGB(255, 233, 232, 232);

  /// DARK COLORS, COOL GRAY

  static Color get primaryDarkColor50 => _primaryDarkColor50;
  static Color get primaryDarkColor100 => _primaryDarkColor100;
  static Color get primaryDarkColor200 => _primaryDarkColor200;
  static Color get primaryDarkColor300 => _primaryDarkColor300;
  static Color get primaryDarkColor400 => _primaryDarkColor400;
  static Color get primaryDarkColor500 => _primaryDarkColor500;
  static Color get primaryDarkColor600 => _primaryDarkColor600;
  static Color get primaryDarkColor700 => _primaryDarkColor700;
  static Color get primaryDarkColor800 => _primaryDarkColor800;
  static Color get primaryDarkColor900 => _primaryDarkColor900;

  static final Color _primaryDarkColor50 = HexColor('#F5F7FA');
  static final Color _primaryDarkColor100 = HexColor('#E4E7EB');
  static final Color _primaryDarkColor200 = HexColor('#CBD2D9');
  static final Color _primaryDarkColor300 = HexColor('#9AA5B1');
  static final Color _primaryDarkColor400 = HexColor('#7B8794');
  static final Color _primaryDarkColor500 = HexColor('#616E7C');
  static final Color _primaryDarkColor600 = HexColor('#52606D');
  static final Color _primaryDarkColor700 = HexColor('#3E4C59');
  static final Color _primaryDarkColor800 = HexColor('#323F4B');
  static final Color _primaryDarkColor900 = HexColor('#1F2933');
  static final Color _backgroundLightColor = HexColor('#E1E3EB');
  static final Color _backgroundNavBarColor = HexColor('#FDFEFF');

  static Color get backgroundNavBarColor => _backgroundNavBarColor;

  static const Color _transparentColor = Colors.transparent;

  static getPrimaryColor(Brightness brightness) {
    return brightness == Brightness.light
        ? primaryLightColor
        : primaryDarkColor;
  }

  static ThemeData getTheme(bool darkMode) {
    final baseTheme = ThemeData(
      fontFamily: 'Lato',
      brightness: Brightness.light,
      primaryColor: ThemeAppData.blackColor,
      primarySwatch: generateMaterialColor(_primaryLightColor),
      elevatedButtonTheme: _elevatedButtonThemeData(_primaryLightColor),
      outlinedButtonTheme: _outlinedButtonThemeData(_primaryLightColor),
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: ThemeAppData.blackColor,
        selectionColor: _primaryDarkColor300,
        selectionHandleColor: _primaryDarkColor800,
      ),
    );

    if (darkMode) {
      final textStyle = TextStyle(
        color: _primaryDarkColor50,
      );
      return baseTheme.copyWith(
        textTheme: TextTheme(
          bodyLarge: textStyle,
          bodyMedium: textStyle,
          bodySmall: textStyle,
        ),
        primaryColor: _primaryDarkColor,
        brightness: Brightness.dark,
        scaffoldBackgroundColor: _primaryDarkColor,
        textSelectionTheme: TextSelectionThemeData(
          cursorColor: ThemeAppData.blackColor,
          selectionColor: _primaryDarkColor300,
          selectionHandleColor: _primaryDarkColor800,
        ),
      );
    }

    return baseTheme.copyWith(
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: _primaryLightColor,
        selectionColor: _primaryLightColor.withOpacity(0.5),
        selectionHandleColor: _primaryLightColor,
      ),
      primaryColor: _primaryLightColor,
      brightness: Brightness.light,
      scaffoldBackgroundColor: Colors.white,
    );
  }

  static _elevatedButtonThemeData(Color color) {
    return ElevatedButtonThemeData(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            return ThemeAppData.whiteColor; // Use the component's default.
          },
        ),
        textStyle: MaterialStateProperty.resolveWith<TextStyle>(
          (Set<MaterialState> states) {
            return TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 20,
              color: ThemeAppData.whiteColor,
            );
          },
        ),
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.disabled)) {
              return _greyColor.withOpacity(0.6);
            }
            return ThemeAppData.blackColor; // Use the component's default.
          },
        ),
        overlayColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.disabled)) {
              return _greyColor;
            } else if (states.contains(MaterialState.focused) ||
                states.contains(MaterialState.pressed)) {
              return _transparentColor;
            }
            return null; // Defer to the widget's default.
          },
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
        padding: MaterialStateProperty.all(
          const EdgeInsets.all(6),
        ),
      ),
    );
  }

  static _outlinedButtonThemeData(Color color) {
    return OutlinedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.disabled)) {
              return _greyColor.withOpacity(0.8);
            }
            return _whiteColor; // Use the component's default.
          },
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
            side: BorderSide(
              color: color,
              width: 2,
            ),
          ),
        ),
      ),
    );
  }
}

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF$hexColor";
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}
