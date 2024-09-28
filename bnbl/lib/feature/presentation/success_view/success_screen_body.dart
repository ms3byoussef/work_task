import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class SuccessCaptionText extends StatelessWidget {
  const SuccessCaptionText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text("your transaction is documented ",
        style: context.textTheme.body
            .copyWith(color: context.colors.captionColor));
  }
}

class GoToHomeButton extends StatelessWidget {
  const GoToHomeButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AppButton(
      type: AppButtonType.active,
      title: "Go to home",
    );
  }
}

class SuccessHeadline extends StatelessWidget {
  const SuccessHeadline({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text("Transaction documented successfully",
        textAlign: TextAlign.center, style: context.textTheme.headline);
  }
}

class SuccessIcon extends StatelessWidget {
  const SuccessIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppIcon(Assets.icons.done, width: 163, height: 200);
  }
}
