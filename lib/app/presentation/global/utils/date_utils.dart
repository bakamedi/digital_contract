import 'package:intl/intl.dart';

abstract class CustomDateUtils {
  CustomDateUtils._();

  static String formatDate(DateTime dateTime) {
    // Define el formato deseado
    final DateFormat formatter = DateFormat(
      'dd \'de\' MMMM \'del\' yyyy',
      'es_ES',
    );
    return formatter.format(dateTime);
  }
}
