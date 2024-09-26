import 'package:auto_route/auto_route.dart';
import 'package:bnbl/feature/presentation/camera_screen/cubit/camera_cubit.dart';
import 'package:camera/camera.dart';
import 'package:design_system/app_icon.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class CameraScreenContent extends StatefulWidget {
  final CameraController controller;

  const CameraScreenContent({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  State<CameraScreenContent> createState() => _CameraScreenContentState();
}

class _CameraScreenContentState extends State<CameraScreenContent> {
  // @override
  // void dispose() {
  //   widget.controller.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<CameraCubit>();

    return Stack(
      children: [
        Column(
          children: [
            Expanded(
              flex: 5,
              child: CameraPreview(widget.controller),
            ),
            Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20.rw),
                color: Colors.black,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        context.maybePop();
                      },
                      child: const Text(
                        'Cancel',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                    Gap(100.rw),
                    IconButton(
                      onPressed: cubit.switchCamera,
                      icon: AppIcon(Assets.icons.switchCamera),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Positioned(
          top: 40,
          left: 20,
          child: IconButton(
            onPressed: () {
              // Flashlight control
              widget.controller.setFlashMode(FlashMode.torch);
            },
            icon: const Icon(Icons.flash_on, color: Colors.white),
          ),
        ),
        Positioned(
          bottom: 20,
          left: 0,
          right: 0,
          child: Column(
            children: [
              GestureDetector(
                onTap: cubit.takePicture,
                child: Container(
                  height: 70,
                  width: 70,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: AppIcon(Assets.icons.takePhoto),
                ),
              ),
              const Gap(20),
            ],
          ),
        ),
      ],
    );
  }
}
