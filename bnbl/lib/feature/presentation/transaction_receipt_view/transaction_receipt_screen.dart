import 'package:auto_route/auto_route.dart';
import 'package:bnbl/feature/presentation/transaction_receipt_view/transaction_receipt_body.dart';
import 'package:flutter/material.dart';

@RoutePage()
class TransactionReceiptScreen extends StatelessWidget {
  final String imagePath;

  const TransactionReceiptScreen({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              const TransactionReceiptAppBar(),
              TransactionReceiptImageWidget(imagePath: imagePath),
              const Spacer(),
              const TryCaptureButton(),
              const ConfirmButton(),
            ],
          ),
        ),
      ),
    );
  }
}
