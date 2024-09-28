// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransactionModel _$TransactionModelFromJson(Map<String, dynamic> json) =>
    TransactionModel(
      refNumber: json['vendor_vat_num'] as String?,
      amount: (json['amount'] as num?)?.toDouble(),
      date: json['date'] as String?,
    );

Map<String, dynamic> _$TransactionModelToJson(TransactionModel instance) =>
    <String, dynamic>{
      'vendor_vat_num': instance.refNumber,
      'amount': instance.amount,
      'date': instance.date,
    };
