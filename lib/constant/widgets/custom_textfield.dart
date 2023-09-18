import 'package:flutter/material.dart';


class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final bool isReadOnly;
  final Widget? suffixIcon;
  final TextInputType textInputType;
  final int? maxLines;
  final String? hint;
  final double borderRadius;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;
  final Color? fillColor;
  final bool? isFilled;
  final Color borderColor;
  final EdgeInsetsGeometry? contentPadding;
  final TextStyle? labelStyle;
  final TextStyle? hintStyle;
  final double? borderWidth;

  const CustomTextField({Key? key,
    this.controller,
    required this.textInputType,
    required this.isReadOnly,
    this.suffixIcon,this.maxLines,
    this.hint,
    this.borderRadius = 5,
    this.fillColor,this.isFilled,
    this.onChanged,this.validator,this.borderColor = Colors.black26,
    this.contentPadding, this.labelStyle, this.hintStyle, this.borderWidth, }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return TextFormField(
      controller: controller,
      validator: validator,
      onChanged: onChanged,
      keyboardType: textInputType,
      readOnly: isReadOnly,
      maxLines: maxLines,
      style:  Theme.of(context).textTheme.displaySmall,
      decoration: InputDecoration(
        hintStyle: hintStyle ?? Theme.of(context).textTheme.displaySmall,
        contentPadding: contentPadding,
        isDense: true,
        border: OutlineInputBorder(borderSide: BorderSide(width: borderWidth ?? 1,color: borderColor),
            borderRadius: BorderRadius.circular(borderRadius)),
        focusedBorder: OutlineInputBorder(borderSide: BorderSide(width: borderWidth ?? 1,color: borderColor),
            borderRadius: BorderRadius.circular(borderRadius)),
        enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: borderWidth ?? 1,color: borderColor),
            borderRadius: BorderRadius.circular(borderRadius)),
        hintText: hint,
        focusColor: Theme.of(context).secondaryHeaderColor,
        suffixIcon: suffixIcon,
        fillColor: fillColor,
        filled: isFilled,
      ),
      autovalidateMode: AutovalidateMode.onUserInteraction,
    );
  }
}
