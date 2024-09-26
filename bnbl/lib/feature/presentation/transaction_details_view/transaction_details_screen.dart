import 'package:auto_route/auto_route.dart';
import 'package:bnbl/config/router/web_app_router.dart';
import 'package:bnbl/feature/presentation/transaction_details_view/transaction_details_card.dart';
import 'package:design_system/app_icon.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

@RoutePage()
class TransactionDetailsScreen extends StatelessWidget {
  const TransactionDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Gap(16),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox.shrink(),
              Column(
                children: [
                  AppIcon(Assets.icons.successIcon),
                  const Gap(16),
                  Text(
                    "Transaction captured !",
                    style: context.textTheme.subHead
                        .copyWith(color: context.colors.accentColor),
                  ),
                  const Gap(8),
                  Text(
                    "2000 SAR",
                    style: context.textTheme.headline2,
                  ),
                  const Gap(16),
                ],
              ),
              Align(
                  alignment: Alignment.topRight,
                  child: AppIcon(Assets.icons.share)),
            ],
          ),
          const Gap(16),
          const TransactionDetailsCard(
            paymentTime: "25-02-2023, 13:22:16",
            cost: 1800,
            fees: 200,
            merchantName: " White PetalMedical Center",
            senderName: "Antonio Roberto",
            refNumber: "000085752257",
            paymentMethod: "LNJ",
            paymentStatus: "Dues",
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: AppButton(
              onPressed: () => context.pushRoute(const AddTransactionRoute()),
              type: AppButtonType.active,
              title: "Confirm ",
            ),
          ),
          const Gap(16),
        ],
      ),
    ));
  }
}
