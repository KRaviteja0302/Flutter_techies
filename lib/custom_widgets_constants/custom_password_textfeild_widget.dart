import 'package:flutter/material.dart';

import '../utility/color_constants.dart';
import '../utility/size_constants.dart';

class CustomPasswordTextFeild extends StatelessWidget {
  final TextEditingController passwordController;
  final Widget prefixICon;
  final Widget suffixICon;
  final String text;
  final String? errorText;
  final void Function(String)? onChanged;
  final bool isPass;
  final TextInputType? inputType;

  const CustomPasswordTextFeild(
      {super.key,
      required this.passwordController,
      required this.text,
      required this.prefixICon,
      required this.suffixICon,
      this.onChanged,
      this.errorText,
      required this.isPass,
      this.inputType});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: passwordController,
      onChanged: onChanged,
      decoration: InputDecoration(
          focusColor: ColorConstants.colorTextFeild,
          fillColor: ColorConstants.colorTextFeildbg,
          hoverColor: ColorConstants.colorTextFeild,
          hintText: text,
          labelText: text,
          prefixIcon: prefixICon,
          suffixIcon: suffixICon,
          border: OutlineInputBorder(
              borderRadius:
                  BorderRadius.all(Radius.circular(SizeConstants.s10)))),
    );
  }
}
