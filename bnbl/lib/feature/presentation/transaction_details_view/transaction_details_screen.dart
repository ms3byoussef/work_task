import 'package:auto_route/auto_route.dart';
import 'package:bnbl/config/router/web_app_router.dart';
import 'package:bnbl/feature/presentation/scanner_view/cubit/scanner_cubit.dart';
import 'package:bnbl/feature/presentation/transaction_details_view/transaction_details_card.dart';
import 'package:design_system/app_icon.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

@RoutePage()
class TransactionDetailsScreen extends StatelessWidget {
  const TransactionDetailsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Gap(16),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox.shrink(),
              TransactionDetailsHeadlineCost(),
              ShareIcon(),
            ],
          ),
          Gap(16),
          TransactionDetailsCard(),
          Spacer(),
          TransactionDetailsConfirmButton(),
          Gap(16),
        ],
      ),
    ));
  }
}

class ShareIcon extends StatelessWidget {
  const ShareIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.topRight, child: AppIcon(Assets.icons.share));
  }
}

class TransactionDetailsConfirmButton extends StatelessWidget {
  const TransactionDetailsConfirmButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: AppButton(
        onPressed: () => context.pushRoute(const AddTransactionRoute()),
        type: AppButtonType.active,
        title: "Confirm ",
      ),
    );
  }
}

class TransactionDetailsHeadlineCost extends StatelessWidget {
  const TransactionDetailsHeadlineCost({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<QRScannerCubit>();
    return Column(
      children: [
        AppIcon(Assets.icons.successIcon),
        const Gap(16),
        Text(
          "Transaction captured !",
          style: context.textTheme.subHead
              .copyWith(color: context.colors.accentColor),
        ),
        const Gap(8),
        if (cubit.receipt?.cost != null)
          Text(
            "${cubit.receipt?.cost} SAR",
            style: context.textTheme.headline2,
          ),
        const Gap(16),
      ],
    );
  }
}
