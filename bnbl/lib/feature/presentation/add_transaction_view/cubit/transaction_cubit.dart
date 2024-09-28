// ignore_for_file: avoid_print

import 'dart:io';

import 'package:bnbl/feature/data/models/transaction_model.dart';
import 'package:bnbl/feature/domain/add_transaction_use_case.dart';
import 'package:bnbl/feature/presentation/add_transaction_view/cubit/transaction_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class TransactionCubit extends Cubit<TransactionState> {
  final AddTransactionUseCase _addTransactionUseCase;
  // final AbstractRemoteFileManager _fileManager;

  TransactionCubit(
    this._addTransactionUseCase,
  ) : super(const TransactionState.initial());
  TransactionModel transactionModel = TransactionModel();
  File? imageFile;

  changeTransaction(TransactionModel transaction) {
    transactionModel = transaction;
    emit(TransactionState.transactionChange(transaction));
  }

  TransactionModel get isTransaction => transactionModel;

  bool get isTransactionValid =>
      (transactionModel.amount.toString().isNotEmpty == true) &&
      (transactionModel.refNumber?.isNotEmpty == true) &&
      (imageFile != null) &&
      (transactionModel.date?.isNotEmpty == true);

  addTransaction() async {
    emit(const TransactionState.transactionLoading());

    print("&&&&&&&&&&&&***${imageFile?.path}");
    final response = await _addTransactionUseCase(
        vendorVatNum: transactionModel.refNumber!,
        amount: transactionModel.amount!,
        date: transactionModel.date!,
        image: imageFile!);
    // print(transactionModel.image?.toString());
    response.fold(
      (error) => emit(TransactionState.transactionError(error)),
      (response) => emit(const TransactionState.transactionSuccessfully()),
    );
  }

  // uploadImage(
  //   File fileResult,
  // ) async {
  //   emit(const TransactionState.uploadingImage());
  //   final image = await uploadFile(
  //     fileResult,
  //     _fileManager,
  //     filename: fileResult.path.split('/').last,
  //   );

  //   if (image != null) {
  //     imageFile = image;
  //   }

  //   emit(TransactionState.uploadImageSuccess(image));
  // }
}
