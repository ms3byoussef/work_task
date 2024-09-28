// ignore_for_file: avoid_print, unused_local_variable

import 'dart:convert';

import 'package:bnbl/feature/data/models/receipt_model.dart';
import 'package:bnbl/feature/presentation/scanner_view/cubit/scanner_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

@injectable
class QRScannerCubit extends Cubit<QRScannerState> {
  QRScannerCubit() : super(const QRScannerState.initial());
  QRViewController? controller;
  ReceiptModel receipt = ReceiptModel();
  String? dataCode;

  bool get isQRValid => receipt.cost != null;

  void onQRViewCreated(QRViewController controller) {
    this.controller = controller;

    dataCode = null;
    try {
      controller.scannedDataStream.listen((scanData) {
        _handleScan(scanData.code);
      });
    } catch (e) {
      emit(QRScannerState.qRScannerError(e.toString()));
    }
  }

  void _handleScan(String? scannedCode) {
    if (scannedCode != null) {
      print("************** Scanned Code: $scannedCode ***************");
      decodeAndParseReceipt(scannedCode);
      dataCode = scannedCode;
      emit(QRScannerState.qRScannerSuccess(dataCode));

      // await close();
    } else {
      emit(const QRScannerState.qRScannerError('Scanned code is null'));
    }
  }

  void decodeAndParseReceipt(String base64String) async {
    emit(const QRScannerState.qRScannerLoading()); // Emit loading state
    try {
      final decodedString = utf8.decode(base64.decode(base64String));
      // final regex = RegExp(r'%\d{2}#?|%0f|%03|%14|%04|%05');
      final regex = RegExp(
          r'\x01#|\x02|\x03|\x04|\x05|\x06|\x07|\x08|\x09|\x0A|\x0B|\x0C|\x0D|\x0E|\x0F|[\x00-\x1F]');

      final lines = decodedString.split(regex);

      final filteredParts = lines.where((part) => part.isNotEmpty).toList();

      print("######################$lines");
      print("filteredParts######################$filteredParts");

      final String merchantName = filteredParts[0].trim();
      print("merchantName : $merchantName");

      final String refNumber = filteredParts[1].trim();
      print("refNumber : $refNumber");

      final DateTime paymentTime =
          DateTime.tryParse(filteredParts[2].trim()) ?? DateTime.now();
      print("paymentTime : $paymentTime");
      String paymentTimeFormatted =
          DateFormat('yyyy-MM-dd kk:mm:ss').format(paymentTime);

      final double cost = double.tryParse(filteredParts[3].trim()) ?? 0.0;
      print("cost : $cost");

      final double fees = double.tryParse(filteredParts[4].trim()) ?? 0.0;
      print("fees : $fees");

      // if (lines.length < 5) {
      //   print(
      //       "Error: Decoded string does not have the correct number of lines");
      //   emit(const QRScannerState.qRScannerError(
      //       'Invalid receipt format: Less than 5 lines'));
      //   return;
      // }

      if (merchantName.isEmpty || refNumber.isEmpty) {
        print("Error: Critical fields are empty");
        emit(const QRScannerState.qRScannerError(
            'Invalid receipt format: Empty fields'));
        return;
      }

      receipt = ReceiptModel(
        merchantName: merchantName,
        refNumber: refNumber,
        paymentTime: paymentTimeFormatted,
        cost: cost,
        fees: fees,
      );

      print("Decoded Receipt: $receipt");
      emit(QRScannerState.receiptSuccess(receipt));
    } catch (e) {
      emit(QRScannerState.qRScannerError(
          'Error decoding or parsing the receipt: $e'));
    }
  }

  void resetScanner() {
    // controller?.dispose(
    dataCode = null;
    if (controller != null) {
      controller!.resumeCamera();
    }
    emit(const QRScannerState.initial());
  }

  @override
  close() {
    controller?.dispose();
    return super.close();
  }
}
