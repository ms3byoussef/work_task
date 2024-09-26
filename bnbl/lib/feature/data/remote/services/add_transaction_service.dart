// ignore_for_file: depend_on_referenced_packages

import 'package:bnbl/config/end_points/app_end_point.dart';
import 'package:bnbl/feature/data/models/transaction_model.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'add_transaction_service.g.dart';

@RestApi()
@injectable
abstract class AddTransactionService {
  @factoryMethod
  factory AddTransactionService(Dio dio) = _AddTransactionService;

  @POST(AppEndPoint.getPostTransaction)
  Future<void> addTransaction(
      {@Body() required TransactionModel transactionModel});
}
