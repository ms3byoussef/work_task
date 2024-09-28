import 'package:auto_route/auto_route.dart';
import 'package:bnbl/feature/presentation/camera_screen/cubit/camera_cubit.dart';
import 'package:camera/camera.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
  @override
  Widget build(BuildContext context) {
    final cubit = context.read<CameraCubit>();

    return Stack(
      children: [
        Column(
          children: [
            Expanded(
              flex: 5,
              child: CameraPreview(cubit.controller!),
            ),
            Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20.rw),
                color: Colors.black,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CancelButton(),
                    TakePhotoButton(cubit: cubit),
                    SwitchCameraButton(cubit: cubit),
                  ],
                ),
              ),
            ),
          ],
        ),
        Positioned(
          top: 40,
          left: 20,
          child: FlashButton(cubit: cubit),
        ),
      ],
    );
  }
}

class FlashButton extends StatefulWidget {
  const FlashButton({
    super.key,
    required this.cubit,
  });
  final CameraCubit cubit;

  @override
  State<FlashButton> createState() => _FlashButtonState();
}

class _FlashButtonState extends State<FlashButton> {
  bool _flashOn = false;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        // Flashlight control

        _flashOn == false
            ? widget.cubit.setFlashOff()
            : widget.cubit.setFlashOn();

        setState(() {
          _flashOn = !_flashOn;
        });
      },
      icon: const Icon(Icons.flash_on, color: Colors.white),
    );
  }
}

class TakePhotoButton extends StatelessWidget {
  const TakePhotoButton({
    super.key,
    required this.cubit,
  });

  final CameraCubit cubit;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        cubit.takePicture();
      },
      child: Container(
        height: 70,
        width: 70,
        decoration: const BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
        ),
        child: AppIcon(Assets.icons.takePhoto),
      ),
    );
  }
}

class SwitchCameraButton extends StatelessWidget {
  const SwitchCameraButton({
    super.key,
    required this.cubit,
  });

  final CameraCubit cubit;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: cubit.switchCamera,
      icon: AppIcon(Assets.icons.switchCamera),
    );
  }
}

class CancelButton extends StatelessWidget {
  const CancelButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.maybePop();
      },
      child: const Text(
        'Cancel',
        style: TextStyle(color: Colors.white, fontSize: 16),
      ),
    );
  }
}
