import 'package:bnbl/core/models/app_exception.dart';
import 'package:bnbl/feature/data/models/transaction_model.dart';
import 'package:dartz/dartz.dart';

abstract class AddTransactionRepository {
  Future<Either<AppExceptions, void>> addTransaction(
    TransactionModel transactionModel,
  );
}
