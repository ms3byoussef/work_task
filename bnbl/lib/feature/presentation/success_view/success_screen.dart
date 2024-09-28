import 'package:auto_route/annotations.dart';
import 'package:bnbl/feature/presentation/success_view/success_screen_body.dart';
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
            const SuccessHeadline(),
            const Gap(10),
            const SuccessCaptionText(),
            const Gap(40),
            const GoToHomeButton()
          ],
        ),
      ),
    );
  }
}
