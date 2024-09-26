// // ignore_for_file: avoid_print

// ignore_for_file: avoid_print

import 'package:bnbl/feature/presentation/scanner_view/cubit/scanner_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

// @lazySingleton
@injectable
class QRScannerCubit extends Cubit<QRScannerState> {
  QRScannerCubit() : super(const QRScannerState.initial());
  QRViewController? controller;
  dynamic codeScan;

  bool get isQRValid => codeScan != null;

  void onQRViewCreated(controller) {
    try {
      controller.scannedDataStream.listen((scanData) {
        codeScan = scanData.code;

        print(
            "************************************** $codeScan ******************************************");
        emit(QRScannerState.qRScannerSuccess(scanData));

        // controller.dispose();
        // close();
      });
    } catch (e) {
      emit(QRScannerState.qRScannerError(e.toString()));
    }
  }

  void resetScanner() {
    emit(const QRScannerState.initial());
  }

  @override
  Future<void> close() {
    controller?.dispose();
    return super.close();
  }
}
