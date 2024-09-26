// ignore_for_file: depend_on_referenced_packages

import 'package:json_annotation/json_annotation.dart';

part 'add_transaction_model.g.dart';

@JsonSerializable()
class AddTransactionModel {
  AddTransactionModel();

  factory AddTransactionModel.fromJson(Map<String, dynamic> json) =>
      _$AddTransactionModelFromJson(json);
  Map<String, dynamic> toJson() => _$AddTransactionModelToJson(this);
}
