import 'package:flutter/material.dart';

class CText extends StatelessWidget {
  final String msg;
  final double fontSize;
  final Color color;
  final FontWeight fontWeight;
  const CText({
    Key? key,
    required this.msg,
    required this.fontSize,
    required this.color,
    required this.fontWeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      msg,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
        fontFamily: "Roboto",
      ),
    );
  }
}
