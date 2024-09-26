// ignore_for_file: depend_on_referenced_packages

import 'package:json_annotation/json_annotation.dart';

part 'receipt_model.g.dart';

@JsonSerializable()
class ReceiptModel {
  final String? merchantName;
  final String? refNumber;
  final String? paymentMethod;
  final String? paymentTime;
  final String? senderName;
  final double? cost;
  final double? fees;
  final String? paymentStatus;
  ReceiptModel(
      {this.merchantName,
      this.refNumber,
      this.paymentMethod,
      this.paymentTime,
      this.senderName,
      this.cost,
      this.fees,
      this.paymentStatus});

  factory ReceiptModel.fromJson(Map<String, dynamic> json) =>
      _$ReceiptModelFromJson(json);
  Map<String, dynamic> toJson() => _$ReceiptModelToJson(this);
}
