extension BoolExt on bool? {
  String get yesOrNo {
    try {
      if (this == null) {
        return 'No';
      }
      return this! ? 'Sí' : 'No';
    } catch (_) {
      return 'No';
    }
  }
}
