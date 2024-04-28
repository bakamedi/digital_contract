import 'package:flutter/material.dart';
import 'package:flutter_meedu/consumer.dart';

import '../../../../core/responsive/responsive.dart';
import '../../../../core/theme/theme_app_data.dart';
import '../../controller/loader/loader_gc.dart';

class LoaderGW extends StatelessWidget {
  final Responsive responsive;

  const LoaderGW({
    super.key,
    required this.responsive,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (_, ref, __) {
        final loaderGC = ref.watch(loaderGlobalProvider);
        return Stack(
          alignment: Alignment.center,
          children: [
            loaderGC.loading
                ? PopScope(
                    canPop: false,
                    child: Material(
                      color: ThemeAppData.blackColor.withOpacity(0.4),
                      child: Center(
                        child: CircularProgressIndicator.adaptive(
                          backgroundColor: ThemeAppData.blackColor,
                          strokeAlign: 50,
                          value: responsive.dp(10),
                          strokeWidth: responsive.dp(3),
                        ),
                      ),
                    ),
                  )
                : const SizedBox(
                    width: 0,
                    height: 0,
                  ),
          ],
        );
      },
    );
  }
}
