extension DoubleExt on double {
  bool get isServiceEnabled {
    try {
      return this > 0.0;
    } catch (_) {
      return false;
    }
  }
}
