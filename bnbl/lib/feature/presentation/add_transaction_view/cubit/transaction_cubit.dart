// ignore_for_file: avoid_print

import 'package:bnbl/core/helpers/upload_file.dart';
import 'package:bnbl/core/remote_files/abstract_remote_file_manager.dart';
import 'package:bnbl/feature/data/models/transaction_model.dart';
import 'package:bnbl/feature/domain/add_transaction_use_case.dart';
import 'package:bnbl/feature/presentation/add_transaction_view/cubit/transaction_state.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class TransactionCubit extends Cubit<TransactionState> {
  TransactionModel transactionModel = TransactionModel();
  final AddTransactionUseCase _addTransactionUseCase;
  final AbstractRemoteFileManager _fileManager;

  TransactionCubit(this._addTransactionUseCase, this._fileManager)
      : super(const TransactionState.initial());

  changeUser(TransactionModel transaction) {
    transactionModel = transaction;
    emit(TransactionState.transactionChange(transaction));
  }

  // bool get isPasswordValid =>
  //     editAccountModel.oldPassword?.trim().isNotEmpty == true &&
  //     (editAccountModel.password?.trim().isNotEmpty == true) &&
  //     (editAccountModel.confirmPassword?.trim().isNotEmpty == true) &&
  //     (editAccountModel.password == editAccountModel.confirmPassword);
  // bool get isNameValid =>
  //     editAccountModel.firstName?.trim().isNotEmpty == true &&
  //     (editAccountModel.lastName?.trim().isNotEmpty == true);

  addTransaction() async {
    emit(const TransactionState.transactionLoading());
    final response =
        await _addTransactionUseCase(transactionModel: transactionModel);
    print(transactionModel.image?.toString());
    response.fold(
      (error) => emit(TransactionState.transactionError(error)),
      (response) => emit(const TransactionState.transactionSuccessfully()),
    );
  }

  uploadImage(
    FilePickerResult fileResult,
  ) async {
    emit(const TransactionState.uploadingImage());
    transactionModel.image == null;
    final image = await uploadFile(
      fileResult.files.single,
      _fileManager,
      filename: fileResult.files.single.name,
    );

    transactionModel.image = image;
    emit(TransactionState.uploadImageSuccess(image));
  }
}
// }
