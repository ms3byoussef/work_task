// ignore_for_file: void_checks

import 'dart:io';

import 'package:bnbl/core/models/app_exception.dart';
import 'package:bnbl/feature/data/remote/datasource/add_transaction_remote_data_source.dart';
import 'package:bnbl/feature/data/repository/add_transaction_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AddTransactionRepository)
class AddTransactionRepositoryImpl implements AddTransactionRepository {
  final AddTransactionRemoteDataSource remoteDataSource;

  const AddTransactionRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<AppExceptions, void>> addTransaction(
      String vendorVatNum, double amount, String date, File image) async {
    try {
      final response = await remoteDataSource.addTransaction(
          vendorVatNum, amount, date, image);

      return right(response);
    } on Exception catch (error) {
      return left(AppExceptions.getDioException(error));
    }
  }
}
