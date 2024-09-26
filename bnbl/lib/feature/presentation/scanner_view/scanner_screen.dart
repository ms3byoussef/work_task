import 'package:auto_route/auto_route.dart';
import 'package:bnbl/config/router/web_app_router.dart';
import 'package:bnbl/feature/presentation/scanner_view/cubit/scanner_cubit.dart';
import 'package:bnbl/feature/presentation/scanner_view/cubit/scanner_state.dart';
import 'package:design_system/app_icon.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

@RoutePage()
class QRScannerScreen extends StatefulWidget {
  const QRScannerScreen({super.key});

  @override
  State<StatefulWidget> createState() => _QRScannerScreenState();
}

class _QRScannerScreenState extends State<QRScannerScreen> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  String? qrText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<QRScannerCubit, QRScannerState>(
        listener: (context, state) {
          state.whenOrNull(
            qRScannerSuccess: (state) {
              context.router.push(
                const TransactionDetailsRoute(),
              );
            },
          );
        },
        builder: (context, state) {
          final cubit = context.read<QRScannerCubit>();
          return Stack(
            children: [
              Column(
                children: <Widget>[
                  Expanded(
                    flex: 5,
                    child: QRView(
                      key: qrKey,
                      onQRViewCreated: cubit.onQRViewCreated,
                      overlay: QrScannerOverlayShape(
                        borderColor: Colors.white,
                        borderRadius: 10,
                        borderLength: 30,
                        borderWidth: 10,
                        cutOutSize: 250, // QR code scan area
                      ),
                    ),
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
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          ),
                          Gap(100.rw),
                          IconButton(
                            onPressed: () {
                              // Switch camera (front/back)
                              cubit.controller?.flipCamera();
                            },
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
                    cubit.controller?.toggleFlash();
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
                    ),
                    const Gap(20),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
