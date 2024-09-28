// ignore_for_file: file_names

import 'package:auto_route/auto_route.dart';
import 'package:bnbl/feature/presentation/scanner_view/cubit/scanner_cubit.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class BottomScannerSection extends StatelessWidget {
  const BottomScannerSection({
    super.key,
    required this.cubit,
  });

  final QRScannerCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.rw),
      color: Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const CancelButton(),
          TakePhotoButton(cubit: cubit),
          FlipCameraButton(cubit: cubit),
        ],
      ),
    );
  }
}

class QRViewWidget extends StatelessWidget {
  const QRViewWidget({
    super.key,
    required this.qrKey,
    required this.cubit,
  });

  final GlobalKey<State<StatefulWidget>> qrKey;
  final QRScannerCubit cubit;

  @override
  Widget build(BuildContext context) {
    return QRView(
      key: qrKey,
      onQRViewCreated: cubit.onQRViewCreated,
      overlay: QrScannerOverlayShape(
        borderColor: Colors.white,
        borderRadius: 10,
        borderLength: 30,
        borderWidth: 10,
        cutOutSize: 250, // QR code scan area
      ),
    );
  }
}

class FlipCameraButton extends StatelessWidget {
  const FlipCameraButton({
    super.key,
    required this.cubit,
  });

  final QRScannerCubit cubit;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        // Switch camera (front/back)
        cubit.controller?.flipCamera();
      },
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

class FlashButton extends StatelessWidget {
  const FlashButton({
    super.key,
    required this.cubit,
  });

  final QRScannerCubit cubit;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        // Flashlight control
        cubit.controller?.toggleFlash();
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

  final QRScannerCubit cubit;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Capture action
        cubit.controller?.pauseCamera();
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
