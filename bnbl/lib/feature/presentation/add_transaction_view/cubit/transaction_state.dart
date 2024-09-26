// ignore_for_file: depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_state.freezed.dart';

@freezed
abstract class TransactionState with _$TransactionState {
  const factory TransactionState.initial() = _Initial;
  const factory TransactionState.transactionLoading() = _TransactionLoading;

  const factory TransactionState.transactionSuccessfully() =
      _TransactionSuccessfully;

  const factory TransactionState.transactionError(String error) =
      _TransactionError;
}
