import 'package:design_system/app_icon.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TransactionWidget extends StatelessWidget {
  final String? title;
  final SvgGenImage? icon;
  final String? action;
  final Color? actionColor;
  final void Function()? onTap;
  const TransactionWidget({
    super.key,
    this.title,
    this.icon,
    this.action,
    this.onTap,
    this.actionColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
      child: InkWell(
        onTap: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                AppIcon(icon ?? Assets.icons.scan),
                const Gap(10),
                Text(title ?? "Transaction",
                    style: context.textTheme.body
                        .copyWith(fontWeight: FontWeight.w400)),
              ],
            ),
            Text(
              action ?? " Capture",
              style: context.textTheme.body.copyWith(
                color: actionColor ?? context.colors.primaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
