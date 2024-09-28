import 'package:auto_route/auto_route.dart';
import 'package:bnbl/feature/presentation/transaction_details_view/transaction_details_body.dart';
import 'package:bnbl/feature/presentation/transaction_details_view/widgets/transaction_details_card.dart';
import 'package:flutter/material.dart';
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
