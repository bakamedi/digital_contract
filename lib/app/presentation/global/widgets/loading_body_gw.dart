import 'package:flutter/material.dart';

import 'package:fade_shimmer/fade_shimmer.dart';

import '../../../core/responsive/responsive.dart';
import '../../../core/theme/theme_app_data.dart';

class LoadingBody extends StatelessWidget {
  const LoadingBody({super.key});

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive(context);

    const int millisecondsDelay = 1000;
    const double radius = 16;
    return SingleChildScrollView(
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            color: ThemeAppData.whiteColor,
            borderRadius: BorderRadius.circular(8),
          ),
          margin: const EdgeInsets.symmetric(horizontal: 16),
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              FadeShimmer(
                height: responsive.bhp(20),
                width: responsive.bwh(80),
                fadeTheme: FadeTheme.light,
                baseColor: ThemeAppData.shimmerOneGreyColor,
                highlightColor: ThemeAppData.shimmerTwoGreyColor,
                radius: radius,
                millisecondsDelay: millisecondsDelay,
                //delayInMilliSeconds: Duration(milliseconds: 500),
              ),
              const SizedBox(
                height: 8,
              ),
              FadeShimmer(
                height: responsive.bhp(2),
                width: responsive.bwh(80),
                fadeTheme: FadeTheme.light,
                baseColor: ThemeAppData.shimmerOneGreyColor,
                highlightColor: ThemeAppData.shimmerTwoGreyColor,
                radius: 16, millisecondsDelay: 500,
                //borderRadius: const BorderRadius.all(Radius.circular(16)),
                //delayInMilliSeconds: Duration(milliseconds: 500),
              ),
              const SizedBox(
                height: 8,
              ),
              FadeShimmer(
                height: responsive.bhp(2),
                width: responsive.bwh(80),
                fadeTheme: FadeTheme.light,
                baseColor: ThemeAppData.shimmerOneGreyColor,
                highlightColor: ThemeAppData.shimmerTwoGreyColor,
                radius: radius,
                millisecondsDelay: millisecondsDelay,
              ),
              const SizedBox(
                height: 40,
              ),
              FadeShimmer(
                height: responsive.bhp(7),
                width: responsive.bwh(80),
                fadeTheme: FadeTheme.light,
                baseColor: ThemeAppData.shimmerOneGreyColor,
                highlightColor: ThemeAppData.shimmerTwoGreyColor,
                radius: radius,
                millisecondsDelay: millisecondsDelay,
              ),
              const SizedBox(
                height: 10,
              ),
              FadeShimmer(
                height: responsive.bhp(7),
                width: responsive.bwh(80),
                fadeTheme: FadeTheme.light,
                baseColor: ThemeAppData.shimmerOneGreyColor,
                highlightColor: ThemeAppData.shimmerTwoGreyColor,
                radius: radius,
                millisecondsDelay: millisecondsDelay,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
