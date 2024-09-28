import 'package:auto_route/auto_route.dart';
import 'package:bnbl/config/router/web_app_router.dart';
import 'package:bnbl/feature/presentation/scanner_view/cubit/scanner_cubit.dart';
import 'package:bnbl/feature/presentation/scanner_view/cubit/scanner_state.dart';
import 'package:bnbl/feature/presentation/scanner_view/scanner_screen_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
  void dispose() {
    context.read<QRScannerCubit>().controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<QRScannerCubit, QRScannerState>(
        listener: (context, state) {
          state.whenOrNull(
            qRScannerSuccess: (_) {
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
                    child: QRViewWidget(qrKey: qrKey, cubit: cubit),
                  ),
                  Expanded(
                    flex: 1,
                    child: BottomScannerSection(cubit: cubit),
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
        },
      ),
    );
  }
}
