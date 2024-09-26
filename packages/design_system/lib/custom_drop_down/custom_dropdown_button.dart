import 'package:design_system/app_icon.dart';
import 'package:design_system/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class CustomDropdownButton extends StatefulWidget {
  final List<dynamic>? items;
  final String? hint;
  final void Function(dynamic)? onChange;
  final dynamic value;
  final String? Function(dynamic)? validator;
  final bool? isMandatory;
  final bool? hasClose;
  final Function()? onTapClose;
  final bool? hasNoIcon;
  const CustomDropdownButton({
    Key? key,
    this.items,
    this.hint,
    this.onChange,
    this.value,
    this.validator,
    this.isMandatory,
    this.hasClose,
    this.onTapClose,
    this.hasNoIcon,
  }) : super(key: key);

  @override
  State<CustomDropdownButton> createState() => _CustomDropdownButtonState();
}

class _CustomDropdownButtonState extends State<CustomDropdownButton> {
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      value: widget.value,
      validator: widget.validator,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        isDense: true,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Color(0xFFDBDBDB), width: 1)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Color(0xFFDBDBDB), width: 1)),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Color(0xFFDBDBDB),
            width: 1,
          ),
        ),
      ),
      icon: AppIcon(
        Assets.icons.downArrow,
        height: 12,
      ),
      isExpanded: true,
      hint: Text(
        widget.hint!,
        style: const TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 14,
        ),
      ),
      items: widget.items!
          .map(
            (item) => DropdownMenuItem<dynamic>(
              value: item,
              child: Text(
                item.toString(),
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
          )
          .toList(),
      onChanged: widget.onChange,
    );
  }
}
