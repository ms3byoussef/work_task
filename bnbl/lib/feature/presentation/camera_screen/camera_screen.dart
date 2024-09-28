// ignore_for_file: avoid_print, use_build_context_synchronously

import 'package:auto_route/auto_route.dart';
import 'package:bnbl/config/router/web_app_router.dart';
import 'package:bnbl/feature/presentation/add_transaction_view/cubit/transaction_cubit.dart';
import 'package:bnbl/feature/presentation/camera_screen/camera_screen_content.dart';
import 'package:bnbl/feature/presentation/camera_screen/cubit/camera_cubit.dart';
import 'package:bnbl/feature/presentation/camera_screen/cubit/camera_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class CameraScreen extends StatefulWidget {
  const CameraScreen({super.key});

  @override
  State<CameraScreen> createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<CameraCubit, CameraState>(
        listener: (context, state) {
          state.maybeWhen(
            pictureTaken: (picture) {
              final transactionCubit = context.read<TransactionCubit>();
              transactionCubit.imageFile = null;
              transactionCubit.imageFile = picture!;

              context.router
                  .push(TransactionReceiptRoute(imagePath: picture.path));
            },
            orElse: () {},
          );
        },
        builder: (context, state) {
          return state.maybeWhen(
            cameraLoading: () =>
                const Center(child: CircularProgressIndicator()),
            cameraReady: (controller) => CameraScreenContent(
              controller: controller,
            ),
            cameraError: (error) => Center(child: Text(error)),
            orElse: () => const Center(),
          );
        },
      ),
    );
  }
}
