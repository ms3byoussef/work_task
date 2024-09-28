// ignore_for_file: depend_on_referenced_packages, unused_import

import 'dart:io';

import 'package:bnbl/core/models/app_exception.dart';
import 'package:bnbl/feature/data/models/transaction_model.dart';
import 'package:camera/camera.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_state.freezed.dart';

@freezed
abstract class TransactionState with _$TransactionState {
  const factory TransactionState.initial() = _Initial;
  const factory TransactionState.transactionLoading() = _TransactionLoading;

  const factory TransactionState.transactionSuccessfully() =
      _TransactionSuccessfully;
  const factory TransactionState.transactionChange(TransactionModel model) =
      _TransactionChange;

  const factory TransactionState.transactionError(AppExceptions error) =
      _TransactionError;
  const factory TransactionState.uploadImageSuccess(File? imageFile) =
      _UploadImageSuccess;
  const factory TransactionState.uploadingImage() = _UploadingImage;
}
