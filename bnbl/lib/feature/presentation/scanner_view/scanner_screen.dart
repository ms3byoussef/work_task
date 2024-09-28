import 'package:auto_route/auto_route.dart';
import 'package:bnbl/config/router/web_app_router.dart';
import 'package:bnbl/feature/presentation/scanner_view/cubit/scanner_cubit.dart';
import 'package:bnbl/feature/presentation/scanner_view/cubit/scanner_state.dart';
import 'package:bnbl/feature/presentation/scanner_view/scanner_screen_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class QRScannerScreen extends StatefulWidget {
  const QRScannerScreen({super.key});

  @override
  State<QRScannerScreen> createState() => _QRScannerScreenState();
}

class _QRScannerScreenState extends State<QRScannerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<QRScannerCubit, QRScannerState>(
        listener: (context, state) {
          state.whenOrNull(
            qRScannerLoading: () => const CircularProgressIndicator(),
            receiptSuccess: (_) {
              context.router.push(
                const TransactionDetailsRoute(),
              );
            },
          );
        },
        builder: (context, state) {
          final cubit = context.watch<QRScannerCubit>();
          return ScannerScreenContent(
            cubit: cubit,
          );
        },
      ),
    );
  }
}
