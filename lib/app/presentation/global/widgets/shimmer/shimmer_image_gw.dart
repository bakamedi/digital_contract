import 'package:flutter/material.dart';

import 'package:fade_shimmer/fade_shimmer.dart';

import '../../../../core/responsive/responsive.dart';
import '../../../../core/theme/theme_app_data.dart';

class ImageCardShimmerGW extends StatelessWidget {
  final double heightFactor;
  final double? iconSize;
  final int millisecondsDelay;
  const ImageCardShimmerGW({
    super.key,
    this.heightFactor = 20,
    this.iconSize,
    this.millisecondsDelay = 1000,
  });

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive(context);
    const double radius = 16;
    return SingleChildScrollView(
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
          ),
          margin: const EdgeInsets.symmetric(horizontal: 16),
          padding: const EdgeInsets.all(16),
          child: Stack(
            alignment: AlignmentDirectional.center,
            children: [
              FadeShimmer(
                height: responsive.safeBlockVertical * heightFactor,
                width: responsive.bwh(80),
                fadeTheme: FadeTheme.light,
                baseColor: ThemeAppData.shimmerOneGreyColor,
                highlightColor: ThemeAppData.shimmerTwoGreyColor,
                radius: radius,
                millisecondsDelay: millisecondsDelay,
                //delayInMilliSeconds: Duration(milliseconds: 500),
              ),
              Icon(
                Icons.image,
                color: ThemeAppData.whiteColor,
                size: iconSize ?? responsive.dp(12),
              )
            ],
          ),
        ),
      ),
    );
  }
}
