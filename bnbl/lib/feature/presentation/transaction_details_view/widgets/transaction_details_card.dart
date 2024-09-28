import 'package:bnbl/feature/presentation/scanner_view/cubit/scanner_cubit.dart';
import 'package:bnbl/feature/presentation/transaction_details_view/widgets/transaction_text.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class TransactionDetailsCard extends StatelessWidget {
  const TransactionDetailsCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<QRScannerCubit>();
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.all(10.0),
            padding:
                const EdgeInsets.symmetric(horizontal: 50.0, vertical: 18.0),
            decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Text(
              'Transaction Details',
              style: context.textTheme.body,
            ),
          ),
          const Gap(18),
          TransactionText(
            title: "Merchant Name",
            content: cubit.receipt.merchantName ?? '',
          ),
          const Gap(16),
          TransactionText(
            title: "Ref Number",
            content: cubit.receipt.refNumber ?? '',
          ),
          const Gap(16),
          TransactionText(
            title: "Payment Time",
            content: cubit.receipt.paymentTime.toString(),
          ),
          const Gap(16),
          TransactionText(
            title: "Payment Method",
            content: cubit.receipt.paymentMethod ?? '',
          ),
          const Gap(16),
          TransactionText(
            title: "Sender Name",
            content: cubit.receipt.senderName ?? '',
          ),
          const Gap(32),
          TransactionText(
            title: "Cost",
            content: cubit.receipt.cost.toString(),
          ),
          const Gap(16),
          TransactionText(
            title: "Fees",
            content: cubit.receipt.fees.toString(),
          ),
          const Gap(16),
          TransactionText(
            title: "Payment Status",
            content: cubit.receipt.paymentMethod ?? 'Dues',
          ),
        ],
      ),
    );
  }
}
