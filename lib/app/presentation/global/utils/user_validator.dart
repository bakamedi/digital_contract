// ignore_for_file: constant_identifier_names

const int LENTGH_PHONE = 9;
const int LENTGH_CALENDAR = 10;
const int MIN_LENTGH_PASSWORD = 6;
const int LEGAL_AGE = 18;
const String EMAIL_EXP =
    r'^([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5})$';

abstract class UserValidator {
  UserValidator._();

  /// Verifica si esta vacio el valor
  static String? isEmpty(String? value, String emptyText) {
    if (value == null || value.isEmpty) {
      return emptyText;
    } else {
      return null;
    }
  }

  /// Verifica si es un telefono valido
  static String? isPhone(
    String? value,
  ) {
    if (value == null) {
      return 'El teléfono no puede estar vacío*';
    } else if (value.isEmpty) {
      return 'El teléfono no puede estar vacío*';
    }

    try {
      int parsedValue = int.parse(value);

      if (parsedValue.toString() != value) {
        return 'El teléfono tiene que ser númerico*';
      } else if (value.length < LENTGH_PHONE) {
        return 'El teléfono debe tener 9 números*';
      }

      return null;
    } catch (_) {
      return 'El teléfono tiene que ser númerico*';
    }
  }

  /// Verifica si es un correo valido
  static String? isEmail(
    String? value,
  ) {
    if (value == null) {
      return null;
    } else if (value.isEmpty) {
      return 'El email no puede estar vacío';
    } else if (!RegExp(EMAIL_EXP).hasMatch(value)) {
      return 'El email no es válido*';
    } else {
      return null;
    }
  }

  /// Verifica si la contraseña valida
  static String? passwordValidator(
    String? value,
  ) {
    if (value == null || value.isEmpty) {
      return 'La contraseña no puede estar vacía';
    } else if (value.length < MIN_LENTGH_PASSWORD) {
      return 'Tienes que tener un mínimo de 6';
    } else {
      return null;
    }
  }

  /// Verificar si las contraseñas coincide
  static bool matchPassword(String actualPassword, String newPassword) {
    return actualPassword.compareTo(newPassword) == 0;
  }
}
