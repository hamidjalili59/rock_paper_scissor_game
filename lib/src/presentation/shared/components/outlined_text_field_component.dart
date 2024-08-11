import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rockie/src/config/config.dart';
import 'package:rockie/src/core/constants/general_constants.dart';
import 'package:rockie/src/core/core.dart';

typedef Validator = String? Function(String? value);

class OutlinedTextFieldComponent extends StatelessWidget {
  const OutlinedTextFieldComponent({
    required this.controller,
    required this.focusNode,
    this.title,
    this.hintTextStyle,
    this.style,
    this.hintText,
    this.labelText,
    this.autofillHints,
    this.maxLength,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.onSaved,
    this.errorText,
    this.suffixIcon,
    this.prefixIcon,
    this.validator,
    this.counterText = '',
    this.readOnly = false,
    this.viewTitle = true,
    this.minLines = 1,
    this.maxLines = 1,
    this.inputFormatters,
    this.fillColor,
    this.borderColor,
    this.onChanged,
    this.onTap,
    this.onFieldSubmitted,
    this.textAlign,
    super.key,
  });

  final String? title;
  final TextEditingController controller;
  final TextStyle? hintTextStyle;
  final TextStyle? style;
  final FocusNode focusNode;
  final Iterable<String>? autofillHints;
  final String? labelText;
  final String? hintText;
  final int? maxLength;
  final int minLines;
  final int maxLines;
  final Validator? validator;
  final bool obscureText;
  final String? errorText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final String counterText;
  final bool readOnly;
  final bool viewTitle;
  final Color? fillColor;
  final Color? borderColor;
  final TextAlign? textAlign;
  final TextInputType keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final void Function(String?)? onSaved;
  final void Function(String?)? onChanged;
  final dynamic Function()? onTap;
  final dynamic Function(String)? onFieldSubmitted;

  @override
  Widget build(BuildContext context) {
    final outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(kBorderRadius),
      borderSide: BorderSide(color: borderColor ?? Colors.black38),
    );

    final errorStyle = context.theme.textTheme.labelSmall!.copyWith(
      color: kErrorColor,
    );

    const contentPadding = EdgeInsets.symmetric(
      vertical: 12,
      horizontal: 16,
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (viewTitle) ...[
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 4),
            child: Text(
              title ?? '',
              style: kNormalTextStyle.copyWith(color: Colors.black87),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(height: 4),
        ],
        TextFormField(
          controller: controller,
          onChanged: onChanged,
          focusNode: focusNode,
          autofillHints: autofillHints,
          maxLength: maxLength ?? 200,
          maxLines: maxLines,
          minLines: minLines,
          obscureText: obscureText,
          inputFormatters: inputFormatters,
          textAlignVertical: TextAlignVertical.center,
          textAlign: textAlign ?? TextAlign.start,
          cursorColor: Colors.black54,
          style: style ?? kNormalTextStyle,
          decoration: InputDecoration(
            errorText: errorText,
            counterStyle: context.theme.textTheme.labelSmall,
            errorStyle: errorStyle.copyWith(height: 0),
            counterText: '',
            hintText: hintText,
            hintStyle: hintTextStyle ??
                kNormalTextStyle.copyWith(
                  color: Colors.black54,
                ),
            labelText: labelText,
            labelStyle: hintTextStyle ??
                kNormalTextStyle.copyWith(color: Colors.black54),
            suffixIcon: suffixIcon,
            suffixIconConstraints: BoxConstraints.loose(
              const Size(40, 40),
            ),
            prefixIcon: prefixIcon,
            border: outlineInputBorder,
            focusedBorder: outlineInputBorder,
            enabledBorder: outlineInputBorder,
            errorBorder: outlineInputBorder.copyWith(
              borderSide: BorderSide(
                color: Colors.red.withOpacity(.5),
              ),
            ),
            focusedErrorBorder: outlineInputBorder.copyWith(
              borderSide: BorderSide(
                color: Colors.red.withOpacity(.5),
              ),
            ),
            contentPadding: contentPadding,
            isDense: true,
            errorMaxLines: 1,
            alignLabelWithHint: true,
            floatingLabelBehavior: FloatingLabelBehavior.auto,
            filled: true,
            fillColor: fillColor ?? Colors.white,
          ),
          keyboardType: keyboardType,
          textInputAction: TextInputAction.done,
          autovalidateMode: AutovalidateMode.disabled,
          onSaved: onSaved,
          validator: validator,
          readOnly: readOnly,
          onTap: onTap,
          onFieldSubmitted: onFieldSubmitted,
        ),
      ],
    );
  }
}
