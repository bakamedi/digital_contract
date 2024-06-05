import 'package:flutter/material.dart';

import 'package:extended_image/extended_image.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';

import '../../../../../core/responsive/responsive.dart';
import '../../../../global/utils/images_path.dart';

class ImagesTopW extends StatelessWidget {
  final Responsive responsive;

  const ImagesTopW({
    super.key,
    required this.responsive,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 250.0,
      flexibleSpace: FlexibleSpaceBar(
        background: FlutterCarousel(
          options: CarouselOptions(
            height: responsive.bhp(100),
            enableInfiniteScroll: true,
            showIndicator: true,
            slideIndicator: const CircularSlideIndicator(),
          ),
          items: [1, 2, 3, 4, 5].map(
            (i) {
              return Builder(
                builder: (BuildContext context) {
                  return ExtendedImage.asset(
                    ImagesPath.HOME_TEST,
                    width: double.infinity,
                    height: responsive.hp(20),
                    fit: BoxFit.fitWidth,
                  );
                },
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
