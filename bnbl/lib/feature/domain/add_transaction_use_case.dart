import 'package:bnbl/core/models/app_exception.dart';
import 'package:bnbl/feature/data/models/transaction_model.dart';
import 'package:bnbl/feature/data/repository/add_transaction_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@injectable
class AddTransactionUseCase {
  final AddTransactionRepository _repository;

  const AddTransactionUseCase(this._repository);

  Future<Either<AppExceptions, void>> call({
    required TransactionModel transactionModel,
  }) {
    return _repository.addTransaction(transactionModel);
  }
}
