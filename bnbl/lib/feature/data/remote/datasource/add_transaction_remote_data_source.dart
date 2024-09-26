import 'package:bnbl/feature/data/models/transaction_model.dart';

abstract class AddTransactionRemoteDataSource {
  addTransaction(TransactionModel transactionModel);
}
