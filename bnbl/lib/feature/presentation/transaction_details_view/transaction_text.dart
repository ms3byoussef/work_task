import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class TransactionText extends StatelessWidget {
  final String? title;
  final String? content;
  const TransactionText({super.key, this.title, this.content});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title ?? 'Merchant Name:',
          style: context.textTheme.small,
          softWrap: true,
        ),
        Container(
          constraints: BoxConstraints(maxWidth: 180.w),
          child: Text('$content',
              textAlign: TextAlign.start,
              style: context.textTheme.small.copyWith(
                  color: context.colors.blackColor,
                  fontWeight: FontWeight.w600)),
        ),
      ],
    );
  }
}
