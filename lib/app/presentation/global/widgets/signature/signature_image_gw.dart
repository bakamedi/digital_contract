import 'dart:io';
import 'dart:math';

import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';

import '../../../../core/responsive/responsive.dart';
import '../shimmer/shimmer_image_gw.dart';

const radiusCircular = Radius.circular(10);

class SignatureImageGW extends StatelessWidget {
  final Responsive responsive;
  final File signatureFile;
  final Color backgroundColor;
  final EdgeInsetsGeometry? margin;
  final double? width;
  final double? height;
  const SignatureImageGW({
    super.key,
    required this.responsive,
    required this.signatureFile,
    this.backgroundColor = Colors.white,
    this.width,
    this.height,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    if (signatureFile.path.contains('file.txt')) {
      return const ImageCardShimmerGW();
    }
    return Transform.rotate(
      angle: -pi / 2,
      child: Container(
        margin: margin ??
            EdgeInsets.symmetric(
              horizontal: responsive.bwh(10),
            ),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: const BorderRadius.all(
            radiusCircular,
          ),
        ),
        child: ExtendedImage.file(
          fit: BoxFit.cover,
          height: height,
          width: width,
          signatureFile,
        ),
      ),
    );
  }
}
