// ignore_for_file: prefer_null_aware_operators, deprecated_member_use, unused_element, unnecessary_null_in_if_null_operators

import 'package:design_system/app_text.dart';
import 'package:design_system/extentions/size_utils.dart';
import 'package:design_system/gen/assets.gen.dart';
import 'package:design_system/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../app_icon.dart';

enum TextFieldType {
  text,
  password,
  dropDown,
}

class TextFieldWidget extends StatelessWidget {
  final TextFieldType? type;
  final TextEditingController? controller;
  final String? hint;
  final String? label;
  final String? initialValue;
  final bool? enabled;
  final bool? expands;
  final bool? authCorrect;
  final String? Function(String?)? onSubmitted;
  final Function()? onTap;
  final String? Function(String?)? onChanged;
  final Widget? icon;
  final Widget? prefixIcon;
  final bool? optional;
  final TextInputType? keyboardType;
  final Color? color;
  final String? Function(String?)? validator;
  final int? maxLength;
  final int? maxLines;
  final int? minLines;
  final List<TextInputFormatter>? inputFormatters;
  final bool? isMandatory;
  final String? caption;
  final String? counterText;
  final TextDirection? textDirection;
  final bool? focus;
  final bool? withPrefixIcon;
  final FloatingLabelBehavior? floatingLabelBehavior;
  final TextStyle? hintStyle;
  final double? width;

  TextFieldWidget({
    super.key,
    required this.type,
    this.controller,
    this.hint,
    this.enabled,
    this.expands,
    this.authCorrect,
    this.onSubmitted,
    this.label,
    this.keyboardType,
    this.onChanged,
    this.icon,
    this.optional,
    this.color,
    this.validator,
    this.maxLength,
    this.maxLines,
    this.minLines,
    this.inputFormatters,
    this.isMandatory,
    this.caption,
    this.onTap,
    this.textDirection,
    this.focus,
    this.initialValue,
    this.floatingLabelBehavior,
    this.prefixIcon,
    this.withPrefixIcon,
    TextStyle? hintStyle,
    this.counterText,
    this.width,
  }) : hintStyle = hintStyle ?? AppTextStyle.textfieldTextStyle;

  @override
  Widget build(BuildContext context) {
    return _TextFieldWidgetContent(
      expands: expands,
      type: type,
      controller: controller,
      enabled: enabled,
      hint: hint,
      onSubmitted: onSubmitted,
      label: label,
      keyboardType: keyboardType,
      autoCorrect: authCorrect,
      onChanged: onChanged,
      icon: icon,
      optional: optional,
      color: color,
      validator: validator,
      maxLength: maxLength,
      maxLines: maxLines,
      minLines: minLines,
      inputFormatters: inputFormatters,
      isMandatory: isMandatory,
      caption: caption,
      onTap: onTap,
      textDirection: textDirection,
      focus: focus,
      initialValue: initialValue,
      floatingLabelBehavior: floatingLabelBehavior,
      prefixIcon: prefixIcon,
      withPrefixIcon: withPrefixIcon,
      hintStyle: hintStyle,
      counterText: counterText,
      width: width,
      // ),
    );
  }
}

class _TextFieldWidgetContent extends StatefulWidget {
  final TextFieldType? type;
  final TextEditingController? controller;
  final String? hint;
  final String? initialValue;
  final bool? enabled;
  final bool? focus;
  final String? Function(String?)? onSubmitted;
  final Function()? onTap;
  final String? label;
  final TextInputType? keyboardType;
  final bool? autoCorrect;
  final String? Function(String?)? onChanged;
  final Widget? icon;
  final bool? optional;
  final bool? expands;
  final Color? color;
  final String? Function(String?)? validator;
  final int? maxLength;
  final int? maxLines;
  final int? minLines;
  final String? caption;
  final List<TextInputFormatter>? inputFormatters;
  final bool? isMandatory;
  final TextDirection? textDirection;
  final FloatingLabelBehavior? floatingLabelBehavior;
  final Widget? prefixIcon;
  final bool? withPrefixIcon;
  final TextStyle? hintStyle;
  final String? counterText;
  final double? width;

  const _TextFieldWidgetContent({
    @required this.type,
    this.expands = false,
    this.controller,
    this.autoCorrect,
    this.hint,
    this.enabled,
    this.onSubmitted,
    this.label,
    this.keyboardType,
    this.onChanged,
    this.icon,
    this.optional,
    this.color,
    this.validator,
    this.maxLength,
    this.maxLines,
    this.minLines,
    this.inputFormatters,
    this.isMandatory,
    this.caption,
    this.onTap,
    this.textDirection,
    this.focus,
    this.initialValue,
    this.floatingLabelBehavior,
    this.prefixIcon,
    this.withPrefixIcon,
    this.hintStyle,
    this.counterText,
    this.width,
  });

  @override
  _TextFieldWidgetState createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<_TextFieldWidgetContent> {
  bool isVisible = false;

  Widget getContent() {
    Widget widgetComponent;
    switch (widget.type!) {
      case TextFieldType.text:
        widgetComponent = TextFormField(
            key: widget.key,
            expands: widget.expands ?? false,
            onTap: widget.onTap,
            initialValue: widget.initialValue,
            autocorrect: widget.autoCorrect ?? true,
            keyboardType: widget.keyboardType ?? TextInputType.text,
            validator: widget.validator,
            onFieldSubmitted: widget.onSubmitted,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            onChanged: widget.onChanged,
            inputFormatters: widget.inputFormatters ?? [],
            maxLength: widget.maxLength,
            maxLines: widget.maxLines,
            minLines: widget.minLines,
            enabled: widget.enabled ?? true,
            textAlign: TextAlign.start,
            textAlignVertical: TextAlignVertical.center,
            controller: widget.controller,
            textInputAction: TextInputAction.done,
            autofocus: widget.focus ?? false,
            textDirection: widget.textDirection ?? null,
            style: Theme.of(context).textTheme.bodyLarge,
            cursorColor: context.colors.blackColor,
            decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              hintStyle: widget.hintStyle,
              isDense: true,
              floatingLabelBehavior: widget.floatingLabelBehavior,
              helperText: widget.caption,
              labelText: widget.label,
              hintText: widget.hint ?? '',
              suffixIcon: widget.icon,
              prefixIcon: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
                child: widget.prefixIcon,
              ),
              counterText: widget.counterText,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide:
                      const BorderSide(color: Color(0xFFDBDBDB), width: 1)),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide:
                      const BorderSide(color: Color(0xFFDBDBDB), width: 1)),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  color: Color(0xFFDBDBDB),
                  width: 1,
                ),
              ),
            ));
        break;
      case TextFieldType.password:
        widgetComponent = TextFormField(
          obscureText: !isVisible,
          controller: widget.controller,
          keyboardType: widget.keyboardType,
          validator: widget.validator,
          onChanged: widget.onChanged,
          inputFormatters: widget.inputFormatters ?? [],
          textDirection:
              widget.textDirection != null ? widget.textDirection! : null,
          maxLength: widget.maxLength,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          textAlignVertical: TextAlignVertical.center,
          style: Theme.of(context).textTheme.bodyLarge,
          cursorColor: context.colors.blackColor,
          decoration: InputDecoration(
            prefixIcon: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
              child: AppIcon(Assets.icons.password),
            ),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            labelText: widget.label,
            hintText: widget.hint,
            hintStyle: widget.hintStyle,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide:
                    const BorderSide(color: Color(0xFFDBDBDB), width: 1)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide:
                    const BorderSide(color: Color(0xFFDBDBDB), width: 1)),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color: Color(0xFFDBDBDB),
                width: 1,
              ),
            ),
            suffixIcon: InkWell(
              onTap: () {
                setState(() {
                  isVisible = !isVisible;
                });
              },
              child: isVisible
                  ? Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: AppIcon(
                        Assets.icons.visible,
                        color: context.colors.primaryColor,
                        height: 22,
                        width: 22,
                      ),
                    )
                  : Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: AppIcon(
                        Assets.icons.eyebrow,
                        height: 22,
                        width: 22,
                      ),
                    ),
            ),
          ),
        );
        break;
      case TextFieldType.dropDown:
        widgetComponent = Stack(
          children: [
            TextFormField(
              key: widget.key,
              // autocorrect: widget.authCorrect ?? true,
              keyboardType: widget.keyboardType ?? TextInputType.text,
              validator: widget.validator,
              onFieldSubmitted: (value) {
                widget.onSubmitted;
              },
              autovalidateMode: AutovalidateMode.onUserInteraction,
              onChanged: widget.onChanged,
              inputFormatters: widget.inputFormatters ?? [],
              maxLength: widget.maxLength,
              maxLines: 2,
              minLines: 1,
              readOnly: true,
              onTap: widget.onTap,
              enabled: widget.enabled ?? true,
              controller: widget.controller,
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(overflow: TextOverflow.ellipsis),
              decoration: InputDecoration(
                contentPadding: widget.withPrefixIcon ?? false
                    ? EdgeInsetsDirectional.only(
                        start: 17.w, top: 21, bottom: 13)
                    : const EdgeInsets.fromLTRB(12, 20, 12, 12),
                floatingLabelBehavior: widget.floatingLabelBehavior,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                        const BorderSide(color: Color(0xFFDBDBDB), width: 1)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                        const BorderSide(color: Color(0xFFDBDBDB), width: 1)),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: Color(0xFFDBDBDB),
                    width: 1,
                  ),
                ),
                labelText: widget.label,
                hintText: widget.hint ?? '',
                suffixIcon: AppIcon(
                  Assets.icons.downArrow,
                  color: widget.enabled ?? true
                      ? Theme.of(context).canvasColor
                      : Theme.of(context).indicatorColor,
                ),
              ),
            ),
            Visibility(
              visible: widget.withPrefixIcon ?? false,
              child: Positioned.directional(
                  textDirection: TextDirection.rtl,

                  // Translations.of(context)!.currentLanguage == 'ar'
                  //     ? TextDirection.rtl
                  //     : TextDirection.ltr,
                  start: 1.5.w,
                  top: .8.h,
                  bottom: .8.h,
                  child: widget.prefixIcon ?? Container()),
            ),
          ],
        );
        break;
    }
    return widgetComponent;
  }

  @override
  Widget build(BuildContext context) {
    return getContent();
  }
}
