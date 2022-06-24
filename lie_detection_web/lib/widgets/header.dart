import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../helper/style.dart';
import 'custom_text.dart';

class Header extends StatelessWidget {
  final String image;
  final String text;
  const Header({
    Key? key,
    required this.image,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Image.asset(
              image,
              fit: BoxFit.contain,
            ),
          ),
          CText(
            msg: text,
            fontSize: 12.sp,
            fontWeight: FontWeight.bold,
            color: colorHeading,
          ),
        ],
      ),
    );
  }
}
