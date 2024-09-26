// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'receipt_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReceiptModel _$ReceiptModelFromJson(Map<String, dynamic> json) => ReceiptModel(
      merchantName: json['merchantName'] as String?,
      refNumber: json['refNumber'] as String?,
      paymentMethod: json['paymentMethod'] as String?,
      paymentTime: json['paymentTime'] as String?,
      senderName: json['senderName'] as String?,
      cost: (json['cost'] as num?)?.toDouble(),
      fees: (json['fees'] as num?)?.toDouble(),
      paymentStatus: json['paymentStatus'] as String?,
    );

Map<String, dynamic> _$ReceiptModelToJson(ReceiptModel instance) =>
    <String, dynamic>{
      'merchantName': instance.merchantName,
      'refNumber': instance.refNumber,
      'paymentMethod': instance.paymentMethod,
      'paymentTime': instance.paymentTime,
      'senderName': instance.senderName,
      'cost': instance.cost,
      'fees': instance.fees,
      'paymentStatus': instance.paymentStatus,
    };
