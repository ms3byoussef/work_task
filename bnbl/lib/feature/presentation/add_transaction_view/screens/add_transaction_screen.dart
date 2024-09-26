import 'package:auto_route/annotations.dart';
import 'package:bnbl/feature/presentation/add_transaction_view/widgets/add_transaction_body.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

@RoutePage()
class AddTransactionScreen extends StatefulWidget {
  const AddTransactionScreen({super.key});

  @override
  State<AddTransactionScreen> createState() => _AddTransactionScreenState();
}

class _AddTransactionScreenState extends State<AddTransactionScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            AddTransactionHeader(),
            Gap(24),
            AddTransactionHeadlineText(),
            Gap(24),
            AddTransactionScan(),
            AddTransactionCapture(),
            Gap(24),
            AddTransactionCaptionText(),
            Spacer(),
            AddTransactionConfirmButton(),
            Gap(24),
          ],
        ),
      ),
    );
  }
}
