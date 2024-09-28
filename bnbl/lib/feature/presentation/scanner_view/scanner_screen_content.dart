import 'package:bnbl/feature/presentation/scanner_view/cubit/scanner_cubit.dart';
import 'package:bnbl/feature/presentation/scanner_view/scanner_screen_body.dart';
import 'package:flutter/material.dart';

class ScannerScreenContent extends StatefulWidget {
  const ScannerScreenContent({
    super.key,
    required this.cubit,
  });

  final QRScannerCubit cubit;

  @override
  State<ScannerScreenContent> createState() => _ScannerScreenContentState();
}

class _ScannerScreenContentState extends State<ScannerScreenContent> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  String? qrText;
  @override
  void dispose() {
    widget.cubit.controller?.dispose();
    widget.cubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: <Widget>[
            Expanded(
              flex: 5,
              child: QRViewWidget(qrKey: qrKey, cubit: widget.cubit),
            ),
            Expanded(
              flex: 1,
              child: BottomScannerSection(cubit: widget.cubit),
            ),
          ],
        ),
        Positioned(
          top: 40,
          left: 20,
          child: FlashButton(cubit: widget.cubit),
        ),
      ],
    );
  }
}
