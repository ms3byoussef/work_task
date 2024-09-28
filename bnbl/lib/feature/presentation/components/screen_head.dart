import 'package:auto_route/auto_route.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class ScreenHead extends StatelessWidget {
  final String? title;
  final String? subTitle;
  final Widget? widget;
  final bool? withoutBack;
  const ScreenHead(
      {super.key,
      this.title,
      this.subTitle,
      this.widget,
      this.withoutBack = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 17, bottom: 17),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              withoutBack == true
                  ? const SizedBox.shrink()
                  : InkWell(
                      onTap: () => context.router.maybePop(),
                      child: AppIcon(
                        Assets.icons.iosArrow,
                        width: 32,
                      ),
                    ),
              Column(
                children: [
                  Text(title ?? "", style: context.textTheme.headline),
                  if (subTitle != null)
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 6),
                      child: Text(subTitle ?? "",
                          style: context.textTheme.textfield),
                    ),
                ],
              ),
              widget ?? Container(width: 32),
            ],
          ),
        ),
        Divider(
          thickness: 2,
          color: context.colors.greyColor.withOpacity(.1),
        ),
      ],
    );
  }
}
