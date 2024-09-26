// ignore_for_file: depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

part 'scanner_state.freezed.dart';

@freezed
abstract class QRScannerState with _$QRScannerState {
  const factory QRScannerState.initial() = _Initial;
  const factory QRScannerState.qRScannerSuccess(Barcode? result) =
      _QRScannerSuccess;
  const factory QRScannerState.qRScannerError(String? error) = _QRScannerError;
}
