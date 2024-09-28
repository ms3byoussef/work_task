import 'dart:io';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'add_transaction_service.g.dart';

@RestApi()
@injectable
abstract class AddTransactionService {
  @factoryMethod
  factory AddTransactionService(Dio dio) = _AddTransactionService;

  @MultiPart()
  @POST("/post_transaction")
  Future<void> postAddTransaction({
    @Part(name: "vendor_vat_num") required String vendorVatNum,
    @Part(name: "amount") required double amount,
    @Part(name: "image") required File image,
    @Part(name: "date") required String date,
  });
}
