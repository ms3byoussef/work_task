// ignore_for_file: use_build_context_synchronously

import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:bnbl/config/router/web_app_router.dart';
import 'package:bnbl/feature/presentation/camera_screen/cubit/camera_cubit.dart';
import 'package:bnbl/feature/presentation/components/screen_head.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ConfirmButton extends StatelessWidget {
  const ConfirmButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppButton(
      type: AppButtonType.active,
      title: "Confirm ",
      onPressed: () => context.router.push(const AddTransactionRoute()),
    );
  }
}

class TryCaptureButton extends StatelessWidget {
  const TryCaptureButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppButton(
        type: AppButtonType.border,
        title: "Try capture ",
        icon: AppIcon(Assets.icons.receiptAdd),
        onPressed: () {
          context.read<CameraCubit>().initializeCamera();
          context.router.push(const CameraRoute());
        });
  }
}

class TransactionReceiptImageWidget extends StatelessWidget {
  const TransactionReceiptImageWidget({
    super.key,
    required this.imagePath,
  });

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 23),
      child: Image.file(
        cacheHeight: 325,
        File(imagePath),
      ),
    );
  }
}

class TransactionReceiptAppBar extends StatelessWidget {
  const TransactionReceiptAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const ScreenHead(
      title: "Transaction Receipt",
    );
  }
}
