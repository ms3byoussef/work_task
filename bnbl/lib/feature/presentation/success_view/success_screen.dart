import 'package:auto_route/annotations.dart';
import 'package:design_system/app_icon.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

@RoutePage()
class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppIcon(Assets.icons.done),
            const Gap(40),
            Text("Transaction documented successfully",
                textAlign: TextAlign.center, style: context.textTheme.headline),
            const Gap(10),
            Text("your transaction is documented ",
                style: context.textTheme.body
                    .copyWith(color: context.colors.captionColor)),
            const Gap(40),
            const AppButton(
              type: AppButtonType.active,
              title: "Go to home",
            )
          ],
        ),
      ),
    );
  }
}
