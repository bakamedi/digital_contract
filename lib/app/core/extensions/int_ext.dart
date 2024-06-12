// ignore_for_file: unnecessary_null_comparison

extension StringExt on int? {
  bool get isNull {
    return this == null;
  }
}
