import 'package:flutter/material.dart';

class BottomOptionsGW extends StatelessWidget {
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final List<Widget> children;
  final MainAxisAlignment mainAxisAlignment;

  const BottomOptionsGW({
    super.key,
    this.margin,
    this.padding,
    required this.children,
    this.mainAxisAlignment = MainAxisAlignment.start,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: Row(
        mainAxisAlignment: mainAxisAlignment,
        children: children,
      ),
    );
  }
}
