import 'package:auto_route/auto_route.dart';
import 'package:bnbl/config/router/web_app_router.dart';
import 'package:bnbl/feature/presentation/add_transaction_view/cubit/transaction_cubit.dart';
import 'package:bnbl/feature/presentation/scanner_view/cubit/scanner_cubit.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

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

class TransactionDetailsConfirmButton extends StatefulWidget {
  const TransactionDetailsConfirmButton({
    super.key,
  });

  @override
  State<TransactionDetailsConfirmButton> createState() =>
      _TransactionDetailsConfirmButtonState();
}

class _TransactionDetailsConfirmButtonState
    extends State<TransactionDetailsConfirmButton> {
  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<QRScannerCubit>();
    final transactionCubit = context.read<TransactionCubit>();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: AppButton(
        onPressed: () {
          final transaction = transactionCubit.transactionModel.copyWith(
            refNumber: cubit.receipt.refNumber.toString(),
            amount: cubit.receipt.cost,
            date: cubit.receipt.paymentTime,
          );
          setState(() {});
          transactionCubit.changeTransaction(transaction);
          context.pushRoute(const AddTransactionRoute());
        },
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
        if (cubit.receipt.cost != null)
          Text(
            "${cubit.receipt.cost} SAR",
            style: context.textTheme.headline2,
          ),
        const Gap(16),
      ],
    );
  }
}
