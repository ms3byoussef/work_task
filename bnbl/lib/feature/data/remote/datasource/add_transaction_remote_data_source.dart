import 'dart:io';

abstract class AddTransactionRemoteDataSource {
  addTransaction(String vendorVatNum, double amount, String date, File image);
}
