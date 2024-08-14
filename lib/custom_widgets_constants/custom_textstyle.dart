import 'package:flutter/material.dart';

class CustomTextStyle extends StatelessWidget {
  final String text;
  final double fontSize;
  // final FontWeight fontWeight;
  final Color textColor;
  final String fontFamily;
  final VoidCallback onClicked;

  const CustomTextStyle(
      {super.key,
      required this.text,
      required this.fontSize,
      required this.textColor,
      required this.fontFamily,
      required this.onClicked});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClicked,
      child: Text(
        text,
        style: TextStyle(
            fontFamily: fontFamily, fontSize: fontSize, color: textColor),
      ),
    );
  }
}
