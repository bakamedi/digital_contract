import 'package:digital_contract/app/core/responsive/responsive.dart';
import 'package:digital_contract/app/presentation/global/widgets/custom_text.dart';
import 'package:digital_contract/app/presentation/router/routes/new_contract_route.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../core/theme/theme_app_data.dart';

class BodyInsideApp extends StatelessWidget {
  final Widget body;
  final Widget? bottomNavigationBar;
  const BodyInsideApp({
    super.key,
    required this.body,
    this.bottomNavigationBar,
  });

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive(context);
    return Scaffold(
      backgroundColor: ThemeAppData.backgroundLightColor,
      bottomNavigationBar: bottomNavigationBar,
      resizeToAvoidBottomInset: true,
      body: body,
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: ThemeAppData.blackColor,
        onPressed: () => context.pushNamed(
          NewContractRoute.path,
        ),
        label: CustomText(
          'Nuevo',
          fontSize: responsive.dp(1.5),
          color: ThemeAppData.whiteColor,
        ),
        icon: Icon(
          Icons.add,
          color: ThemeAppData.whiteColor,
          size: responsive.dp(2),
        ),
      ),
    );
  }
}
