import 'package:intl/intl.dart';

abstract class CurrencyMoneyUtil {
  CurrencyMoneyUtil._();

  /// Convierte el valor en formato de un numero
  /// Ejemplo llega como parametro 1223342 devuelve $12.2333
  /// Si llega negativo -12.2333  devuelve $-12.2333,
  static String numberFormat(
    String value, {
    bool dollarSymbol = true,
  }) {
    late String newValue;
    newValue = value.isEmpty ? '0' : value;
    double doubleValue = double.parse(newValue);
    final valueAbs = doubleValue.abs();
    final numberFormat = NumberFormat.simpleCurrency(decimalDigits: 0);
    final moneyFormat = numberFormat.format(valueAbs).toString();
    final moneyReplace = moneyFormat.replaceAll(',', '.');
    if (doubleValue.isNegative) {
      final moneyNegativeFormat = moneyReplace.replaceAll('\$', '');
      return '\$-$moneyNegativeFormat';
    } else {
      if (!dollarSymbol) {
        return moneyReplace.replaceAll('\$', '');
      }
      return moneyReplace;
    }
  }

  /// Remueve las comas y puntos del valor ingresado [value]
  /// si el valor de [value] es vacio retornara 0.00
  static String removeCommasAndDots(String value) {
    if (value.isEmpty) {
      return '0';
    } else {
      if (value.contains('.') || value.contains(',') || value.contains('\$')) {
        final removeDotsAndCommas = value
            .replaceAll(
              '.',
              '',
            )
            .replaceAll(
              ',',
              '',
            )
            .replaceAll(
              '\$',
              '',
            );
        return removeDotsAndCommas;
      } else {
        return value;
      }
    }
  }

  /// Obtiene el valor correcto de un [String]
  /// con formato $1.223444,23 como [String]
  /// y devuelve 1.223444,23 coomo valor como [double]
  static int getParseValue(String value) {
    try {
      final removeValue = removeCommasAndDots(value);
      final newValue = int.parse(removeValue);
      return newValue;
    } catch (_) {
      return -1;
    }
  }

  /// Obtiene el valor de valor [value] como [String] a un valor [int]
  static int correctFormatAmountInt(String value) {
    try {
      final removeCommasDots = removeCommasAndDots(value);
      return int.parse(removeCommasDots);
    } catch (_) {
      return 0;
    }
  }

  // Obtiene el valor de valor [value] como [String] a un valor [int]
  static double formatAmountDouble(String value) {
    try {
      return double.parse(value);
    } catch (_) {
      return 0.0;
    }
  }

  /// Valida si el valor trae un vacio o un valor no reconocible
  /// devuelve un 0
  static String parseCorrectString(String value) {
    try {
      return value.isEmpty ? '0' : value;
    } catch (_) {
      return '0';
    }
  }
}
