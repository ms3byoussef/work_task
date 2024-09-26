// ignore_for_file: depend_on_referenced_packages

import 'package:json_annotation/json_annotation.dart';

part 'transaction_model.g.dart';

@JsonSerializable()
class TransactionModel {
  String? vendor_vat_num;
  String? amount;
  String? image;
  String? date;
  TransactionModel({
    this.vendor_vat_num,
    this.amount,
    this.image,
    this.date,
  });
  TransactionModel copyWith({
    String? vendor_vat_num,
    String? amount,
    String? image,
    String? date,
  }) {
    return TransactionModel(
      vendor_vat_num: vendor_vat_num ?? this.vendor_vat_num,
      amount: amount ?? this.amount,
      image: image ?? this.image,
      date: date ?? this.date,
    );
  }

  factory TransactionModel.fromJson(Map<String, dynamic> json) =>
      _$TransactionModelFromJson(json);
  Map<String, dynamic> toJson() => _$TransactionModelToJson(this);
}
