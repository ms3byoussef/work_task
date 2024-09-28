import 'dart:io';

import 'package:bnbl/core/models/app_exception.dart';
import 'package:bnbl/feature/data/repository/add_transaction_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@injectable
class AddTransactionUseCase {
  final AddTransactionRepository _repository;

  const AddTransactionUseCase(this._repository);

  Future<Either<AppExceptions, void>> call(
      {required String vendorVatNum,
      required double amount,
      required String date,
      required File image}) {
    return _repository.addTransaction(
      vendorVatNum,
      amount,
      date,
      image,
    );
  }
}
