// ignore_for_file: depend_on_referenced_packages

import 'package:bnbl/feature/data/models/receipt_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'scanner_state.freezed.dart';

@freezed
abstract class QRScannerState with _$QRScannerState {
  const factory QRScannerState.initial() = _Initial;
  const factory QRScannerState.qRScannerLoading() = _QRScannerLoading;
  const factory QRScannerState.qRScannerSuccess(String? result) =
      _QRScannerSuccess;
  const factory QRScannerState.receiptSuccess(ReceiptModel? result) =
      _ReceiptSuccess;
  const factory QRScannerState.qRScannerError(String? error) = _QRScannerError;
}
