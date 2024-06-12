import 'package:flutter/material.dart';
import 'package:flutter_meedu/consumer/consumer_widget.dart';

import '../../../core/responsive/responsive.dart';
import '../../../core/theme/theme_app_data.dart';
import '../utils/action_btn.dart';

class BodyInsideApp extends ConsumerWidget {
  final Widget body;
  final Widget? bottomNavigationBar;
  const BodyInsideApp({
    super.key,
    required this.body,
    this.bottomNavigationBar,
  });

  @override
  Widget build(BuildContext context, ref) {
    final responsive = Responsive(context);
    return Scaffold(
      backgroundColor: ThemeAppData.backgroundLightColor,
      bottomNavigationBar: bottomNavigationBar,
      resizeToAvoidBottomInset: true,
      body: body,
      floatingActionButton: actionBtn(
        context,
        responsive,
      ),
    );
  }
}
