import 'package:bnbl/core/models/app_exception.dart';
import 'package:dartz/dartz.dart';

abstract class AddTransactionRepository {
  Future<Either<AppExceptions, void>> addTransaction();
}
