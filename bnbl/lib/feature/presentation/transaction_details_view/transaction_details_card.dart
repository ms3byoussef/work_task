import 'package:bnbl/feature/presentation/transaction_details_view/transaction_text.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TransactionDetailsCard extends StatelessWidget {
  final String merchantName;
  final String refNumber;
  final String paymentMethod;
  final String paymentTime;
  final String senderName;
  final double cost;
  final double fees;
  final String paymentStatus;

  const TransactionDetailsCard({
    super.key,
    required this.merchantName,
    required this.refNumber,
    required this.paymentMethod,
    required this.senderName,
    required this.cost,
    required this.fees,
    required this.paymentStatus,
    required this.paymentTime,
  });

  @override
  Widget build(BuildContext context) {
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
                const EdgeInsets.symmetric(horizontal: 70.0, vertical: 18.0),
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
            content: merchantName,
          ),
          const Gap(16),
          TransactionText(
            title: "Ref Number",
            content: refNumber,
          ),
          const Gap(16),
          TransactionText(
            title: "Payment Time",
            content: paymentTime,
          ),
          const Gap(16),
          TransactionText(
            title: "Payment Method",
            content: paymentMethod,
          ),
          const Gap(16),
          TransactionText(
            title: "Sender Name",
            content: senderName,
          ),
          const Gap(32),
          TransactionText(
            title: "Cost",
            content: cost.toString(),
          ),
          const Gap(16),
          TransactionText(
            title: "Fees",
            content: fees.toString(),
          ),
          const Gap(16),
          TransactionText(
            title: "Payment Status",
            content: fees.toString(),
          ),
        ],
      ),
    );
  }
}
