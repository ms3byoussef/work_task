// ignore_for_file: must_be_immutable, avoid_print

import 'package:design_system/app_icon.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class CustomDropDown extends StatefulWidget {
  final String? label;
  final String? hintText;
  final double? height;
  final double? width;
  final String? hintTitle;
  // bool withHintTitle;
  TextEditingController? controller = TextEditingController();
  final List<DropdownMenuItem<String>>? dropDownList;
  final void Function(String?)? onChanged;
  final void Function(String?)? onSaved;
  final String? Function(String?)? validator;

  CustomDropDown({
    this.controller,
    this.label,
    this.hintText,
    required this.dropDownList,
    super.key,
    this.hintTitle,
    this.height,
    this.width,
    this.onChanged,
    this.onSaved,
    this.validator,
  });

  @override
  State<CustomDropDown> createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        widget.label != null
            ? Padding(
                padding: const EdgeInsets.only(
                  top: 14,
                ),
                child: Text(
                  widget.label!,
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall!
                      .copyWith(color: context.colors.blackColor),
                ),
              )
            : const SizedBox(),
        DropdownButtonFormField(
            dropdownColor: context.colors.blackColor,
            decoration: const InputDecoration(border: InputBorder.none),
            hint: Text(
              widget.hintText!,
              style: Theme.of(context).textTheme.titleSmall,
            ),
            alignment: AlignmentDirectional.center,
            // isDense: true,
            isExpanded: true,
            // value: widget.controller!.text,
            style: Theme.of(context).textTheme.titleSmall,
            elevation: 4,
            icon: AppIcon(
              Assets.icons.downArrow,
              width: 18,
            ),
            validator: widget.validator,
            items: widget.dropDownList!
                .map<DropdownMenuItem<String>>((e) =>
                    DropdownMenuItem<String>(value: e.value, child: e.child))
                .toList(),
            onSaved: widget.onSaved,
            onChanged: (String? newValue) {
              setState(() {
                widget.controller!.text = newValue!;
              });
            })
      ],
    );
  }
}
