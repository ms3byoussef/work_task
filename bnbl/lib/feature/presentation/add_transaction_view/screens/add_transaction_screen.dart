import 'package:auto_route/auto_route.dart';
import 'package:bnbl/config/router/web_app_router.dart';
import 'package:bnbl/core/mixins/loading_mixin.dart';
import 'package:bnbl/feature/presentation/add_transaction_view/cubit/transaction_cubit.dart';
import 'package:bnbl/feature/presentation/add_transaction_view/cubit/transaction_state.dart';
import 'package:bnbl/feature/presentation/add_transaction_view/widgets/add_transaction_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

@RoutePage()
class AddTransactionScreen extends StatefulWidget {
  const AddTransactionScreen({super.key});

  @override
  State<AddTransactionScreen> createState() => _AddTransactionScreenState();
}

class _AddTransactionScreenState extends State<AddTransactionScreen>
    with ErrorStateMixin {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TransactionCubit, TransactionState>(
      listener: (context, state) {
        state.maybeWhen(
          transactionSuccessfully: () =>
              context.router.push(const SuccessRoute()),
          transactionError: (error) => handleErrors(error),
          orElse: () {},
        );
      },
      builder: (context, state) {
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
      },
    );
  }
}
