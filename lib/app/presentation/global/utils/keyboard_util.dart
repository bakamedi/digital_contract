import 'package:flutter/material.dart';

abstract class KeyboardUtil {
  KeyboardUtil._();

  /// Cierra el teclado si es que esta abierto en la pantalla
  static void unFocusKeyboard() {
    FocusManager.instance.primaryFocus?.unfocus();
  }
}
