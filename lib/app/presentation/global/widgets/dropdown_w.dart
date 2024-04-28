import 'dart:io';

import 'package:flutter/material.dart';

import 'android/dropdown.dart';
import 'ios/dropdown.dart';

class DropdownW extends StatelessWidget {
  final String selected;

  final List<String> dropdownList;
  final Function(Object?) onChanged;
  final EdgeInsetsGeometry? margin;
  const DropdownW({
    super.key,
    required this.selected,
    required this.dropdownList,
    required this.onChanged,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? DropdownIosWidget(
            closeTxt: 'Cerrar',
            selected: selected,
            dropdownList: dropdownList,
            margin: margin,
            onChanged: (p0) {
              onChanged(p0);
            },
          )
        : DropdownAndroidWidget(
            margin: margin,
            selected: selected,
            dropdownList: dropdownList,
            onChanged: (p0) {
              onChanged(p0);
            },
          );
  }
}
