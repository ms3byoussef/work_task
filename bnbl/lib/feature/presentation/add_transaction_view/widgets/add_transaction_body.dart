// ignore_for_file: use_build_context_synchronously

import 'package:auto_route/auto_route.dart';
import 'package:bnbl/config/router/web_app_router.dart';
import 'package:bnbl/core/di/core_injector_container.dart';
import 'package:bnbl/feature/presentation/add_transaction_view/cubit/transaction_cubit.dart';
import 'package:bnbl/feature/presentation/add_transaction_view/widgets/transaction_widget.dart';
import 'package:bnbl/feature/presentation/camera_screen/cubit/camera_cubit.dart';
import 'package:bnbl/feature/presentation/components/screen_head.dart';
import 'package:bnbl/feature/presentation/scanner_view/cubit/scanner_cubit.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddTransactionConfirmButton extends StatelessWidget {
  const AddTransactionConfirmButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final transactionCubit = context.read<TransactionCubit>();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: AppButton(
        type: transactionCubit.state.maybeMap(
          transactionLoading: (_) => AppButtonType.loading,
          orElse: () => transactionCubit.isTransactionValid
              ? AppButtonType.active
              : AppButtonType.inactive,
        ),
        title: "Confirm ",
        onPressed: transactionCubit.isTransactionValid
            ? transactionCubit.addTransaction
            : () {},
      ),
    );
  }
}

class AddTransactionCaptionText extends StatelessWidget {
  const AddTransactionCaptionText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Text(
        "File formats are jpeg, png, pdf and docx with maximum upload size of 20MB for each required document listed above.",
        style: context.textTheme.small
            .copyWith(color: context.colors.captionColor),
      ),
    );
  }
}

class AddTransactionCapture extends StatelessWidget {
  const AddTransactionCapture({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<CameraCubit>();

    return TransactionWidget(
      title: "Capture receipt ",
      icon: cubit.isImageFileValid
          ? Assets.icons.copySuccess
          : Assets.icons.camera,
      action: cubit.isImageFileValid ? "Change" : "Capture",
      onTap: () {
        context.read<CameraCubit>().initializeCamera();

        context.router.push(const CameraRoute());
      },
    );
  }
}

class AddTransactionScan extends StatelessWidget {
  const AddTransactionScan({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<QRScannerCubit>();
    return BlocProvider(
      create: (context) => getIt<QRScannerCubit>(),
      child: TransactionWidget(
        title: "Scan your receipt",
        icon: cubit.isQRValid ? Assets.icons.copySuccess : Assets.icons.scan,
        action: cubit.isQRValid ? "Change" : "Scan",
        onTap: () {
          cubit.resetScanner();

          context.router.push(const QRScannerRoute());
        },
      ),
    );
  }
}

class AddTransactionHeadlineText extends StatelessWidget {
  const AddTransactionHeadlineText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Text(
        "Now, let’s document your transaction",
        style: context.textTheme.headline
            .copyWith(color: context.colors.primaryColor),
      ),
    );
  }
}

class AddTransactionHeader extends StatelessWidget {
  const AddTransactionHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const ScreenHead(
      title: "Add Transaction",
    );
  }
}
