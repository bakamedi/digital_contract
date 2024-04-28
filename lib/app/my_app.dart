import 'package:flutter/material.dart';

import 'core/responsive/responsive.dart';
import 'core/theme/theme_app_data.dart';
import 'presentation/global/widgets/loader/loader_gw.dart';
import 'presentation/router/router_provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive(context);

    return Stack(
      alignment: Alignment.center,
      children: [
        MaterialApp.router(
          routerConfig: routerProvider.read(),
          title: 'Digital Contracts',
          theme: ThemeAppData.lightTheme,
        ),
        LoaderGW(
          responsive: responsive,
        ),
      ],
    );
  }
}
