// ignore_for_file: dead_code

import 'package:design_system/theme/app_theme.dart';
import 'package:flutter/material.dart';

enum AppButtonType {
  active,
  inactive,
  loading,
  border,
}

class AppButton extends StatelessWidget {
  final String? title;
  final AppButtonType type;
  final void Function()? onPressed;
  final EdgeInsetsGeometry? margin;
  final double? width;
  final double? height;
  final Widget? icon;
  final BoxBorder? border;
  final Color? textColor;

  const AppButton({
    super.key,
    this.type = AppButtonType.active,
    this.title,
    this.onPressed,
    this.margin,
    this.width,
    this.height,
    this.icon,
    this.border,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case AppButtonType.loading:
        return Container(
          width: width ?? double.infinity,
          height: height ?? 65,
          margin: margin ?? const EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
            border: border ?? Border.all(color: Colors.transparent),
            borderRadius: BorderRadius.circular(48),
            color: context.colors.primaryColor,
          ),
          child: MaterialButton(
            onPressed: onPressed,
            child: const CircularProgressIndicator(
              color: Colors.white,
            ),
          ),
        );
        break;
      case AppButtonType.active:
        return Container(
          width: width ?? double.infinity,
          height: height ?? 65,
          margin: margin ?? const EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
            border: border ?? Border.all(color: Colors.transparent),
            borderRadius: BorderRadius.circular(48),
            color: context.colors.primaryColor,
          ),
          child: MaterialButton(
            onPressed: onPressed,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 7, left: 7),
                  child: icon ?? const SizedBox.shrink(),
                ),
                Text(
                  textAlign: TextAlign.center,
                  title ?? "Button",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
        );
        break;

      case AppButtonType.inactive:
        return Container(
          width: width ?? double.infinity,
          height: height ?? 65,
          margin: margin ?? const EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(48),
              border: border ?? Border.all(color: const Color(0xfff6f6f6)),
              color: const Color(0xfff6f6f6)),
          child: MaterialButton(
            onPressed: onPressed,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 7, left: 7),
                  child: icon ?? const SizedBox.shrink(),
                ),
                Text(
                  textAlign: TextAlign.center,
                  title ?? "unActive Button",
                  style: TextStyle(
                      color: textColor ?? const Color(0xFF8D8D8D),
                      fontSize: 18),
                ),
              ],
            ),
          ),
        );
        break;

      case AppButtonType.border:
        return Container(
          width: width ?? double.infinity,
          height: height ?? 65,
          margin: margin ?? const EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(48),
              border: border ??
                  Border.all(
                    color: context.colors.primaryColor,
                  ),
              color: const Color(0xfff6f6f6)),
          child: MaterialButton(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
            highlightColor: context.colors.accentColor,
            clipBehavior: Clip.antiAlias,
            height: height ?? 65,
            onPressed: onPressed,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (icon != null)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 7),
                    child: icon ?? const SizedBox.shrink(),
                  ),
                Text(
                  textAlign: TextAlign.center,
                  title ?? "Details Button",
                  style: TextStyle(
                      color: textColor ?? context.colors.primaryColor,
                      fontSize: 16),
                ),
              ],
            ),
          ),
        );
        break;
      default:
        return const SizedBox.shrink();
    }
  }
}
