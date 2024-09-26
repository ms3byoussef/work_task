// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransactionModel _$TransactionModelFromJson(Map<String, dynamic> json) =>
    TransactionModel(
      vendor_vat_num: json['vendor_vat_num'] as String?,
      amount: json['amount'] as String?,
      image: json['image'] as String?,
      date: json['date'] as String?,
    );

Map<String, dynamic> _$TransactionModelToJson(TransactionModel instance) =>
    <String, dynamic>{
      'vendor_vat_num': instance.vendor_vat_num,
      'amount': instance.amount,
      'image': instance.image,
      'date': instance.date,
    };
