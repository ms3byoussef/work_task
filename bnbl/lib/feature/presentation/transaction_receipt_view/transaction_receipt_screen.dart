import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:bnbl/config/router/web_app_router.dart';
import 'package:bnbl/feature/presentation/camera_screen/cubit/camera_cubit.dart';
import 'package:bnbl/feature/presentation/components/screen_head.dart';
import 'package:design_system/app_icon.dart';
import 'package:design_system/buttons/app_button.dart';
import 'package:design_system/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
              const ScreenHead(
                title: "Transaction Receipt",
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 23),
                child: Image.file(
                  cacheHeight: 325,
                  File(imagePath),
                ),
              ),
              const Spacer(),
              AppButton(
                  type: AppButtonType.border,
                  title: "Try capture ",
                  icon: AppIcon(Assets.icons.receiptAdd),
                  onPressed: () {
                    context.read<CameraCubit>().initializeCamera();

                    context.router.push(const CameraRoute());
                  }),
              AppButton(
                type: AppButtonType.active,
                title: "Confirm ",
                onPressed: () =>
                    context.router.push(const AddTransactionRoute()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
