import 'package:auto_route/annotations.dart';
import 'package:bnbl/feature/presentation/success_view/success_screen_body.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

@RoutePage()
class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SuccessIcon(),
            Gap(40),
            SuccessHeadline(),
            Gap(10),
            SuccessCaptionText(),
            Gap(40),
            GoToHomeButton()
          ],
        ),
      ),
    );
  }
}
