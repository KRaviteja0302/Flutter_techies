import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final Color bgcolor;
  final double radiussize;
  final double width;
  final double height;
  final String fontfamily;
  final double fontsize;
  final Color textcolor;
  final VoidCallback onClicked;
  CustomButton(
      {super.key,
      required this.title,
      required this.bgcolor,
      required this.radiussize,
      required this.width,
      required this.height,
      required this.fontfamily,
      required this.fontsize,
      required this.textcolor,
      required this.onClicked});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: bgcolor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(radiussize))),
            minimumSize: Size(width, height)),
        onPressed: onClicked,
        child: Text(
          title,
          style: TextStyle(
              fontFamily: fontfamily, fontSize: fontsize, color: textcolor),
        ));
  }
}
