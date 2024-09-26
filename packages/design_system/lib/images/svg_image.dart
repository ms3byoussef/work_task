import 'package:design_system/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class AppSvgImage extends StatelessWidget {
  const AppSvgImage(
    this.image, {
    this.width,
    this.height,
    this.color,
    this.fit = BoxFit.contain,
    super.key,
  });

  final SvgGenImage image;
  final double? width;
  final double? height;
  final BoxFit fit;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return image.svg(
      width: width,
      height: height,
      fit: fit,
      colorFilter:
          color != null ? ColorFilter.mode(color!, BlendMode.srcIn) : null,
      package: "design_system",
    );
  }
}
