import 'package:flutter/material.dart';

import '../utility/color_constants.dart';
import '../utility/size_constants.dart';

class CustomTextFeild extends StatelessWidget {
  final TextEditingController eamilcontroller;
  final Widget prefixICon;
  final String text;
  final String? errorText;
  final void Function(String)? onChanged;
  final bool isPass;
  final TextInputType? inputType;

  const CustomTextFeild({
    super.key,
    required this.eamilcontroller,
    required this.text,
    required this.prefixICon,
    this.errorText,
    this.onChanged,
    required this.isPass,
    this.inputType,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: eamilcontroller,
      obscureText: isPass,
      onChanged: onChanged,
      keyboardType: inputType,
      decoration: InputDecoration(
          focusColor: ColorConstants.colorTextFeild,
          fillColor: ColorConstants.colorTextFeildbg,
          filled: true,
          hoverColor: ColorConstants.colorTextFeild,
          hintText: text,
          labelText: text,
          errorText: errorText,
          prefixIcon: prefixICon,
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(SizeConstants.s10)),
          errorBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.red, width: 2),
              borderRadius: BorderRadius.circular(8)),
          focusedErrorBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.red, width: 2),
              borderRadius: BorderRadius.circular(8))),
    );
  }
}
