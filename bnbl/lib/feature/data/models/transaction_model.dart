// ignore_for_file: depend_on_referenced_packages, non_constant_identifier_names, deprecated_member_use

import 'dart:io';

import 'package:json_annotation/json_annotation.dart';

part 'transaction_model.g.dart';

@JsonSerializable()
class TransactionModel {
  @JsonKey(name: "vendor_vat_num")
  String? refNumber;
  double? amount;
  @JsonKey(ignore: true)
  File? image;
  String? date;
  TransactionModel({
    this.refNumber,
    this.amount,
    this.image,
    this.date,
  });
  TransactionModel copyWith({
    String? refNumber,
    double? amount,
    File? image,
    String? date,
  }) {
    return TransactionModel(
      refNumber: refNumber ?? this.refNumber,
      amount: amount ?? this.amount,
      image: image ?? this.image,
      date: date ?? this.date,
    );
  }

  Map<String, dynamic> toJson() => _$TransactionModelToJson(this);
}
