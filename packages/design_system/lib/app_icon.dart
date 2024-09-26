import 'package:design_system/gen/assets.gen.dart';
import 'package:flutter/widgets.dart';

class AppIcon extends StatelessWidget {
  const AppIcon(
    this.icon, {
    super.key,
    this.height,
    this.width,
    this.color,
  });

  final SvgGenImage icon;
  final double? height;
  final double? width;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return icon.svg(
      width: width,
      height: height,
      colorFilter:
          color != null ? ColorFilter.mode(color!, BlendMode.srcIn) : null,
      package: "design_system",
    );
  }
}
