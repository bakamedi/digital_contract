import 'package:flutter/material.dart';

import 'package:flutter_meedu/consumer.dart';

import '../../../../core/icons/digital_contract_icons.dart';
import '../../../../core/responsive/responsive.dart';

import '../../../../core/extensions/widgets_ext.dart';
import '../controller/splash_controller.dart';

class SplashView extends StatelessWidget {
  const SplashView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive(context);
    return Consumer(
      builder: (_, ref, __) {
        final splashController = splashProvider.read();
        splashController.init(context);
        return Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  DigitalContractIcons.signature_solid,
                  size: responsive.dp(15),
                ).padding(
                  const EdgeInsets.symmetric(vertical: 10),
                ),
                const CircularProgressIndicator()
              ],
            ),
          ),
        );
      },
    );
  }
}
