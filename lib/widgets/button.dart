import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../helper/style.dart';
import 'custom_text.dart';

// ignore: must_be_immutable
class Button extends StatelessWidget {
  final String name;
  final GestureTapCallback onPressed;
  final Color? color;
  const Button({
    Key? key,
    required this.name,
    required this.onPressed,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Container(
        width: 150,
        margin: EdgeInsets.fromLTRB(0, 3.sp, 3.sp, 3.sp),
        child: Material(
          color: color ?? colorPrimary,
          borderRadius: BorderRadius.circular(20.0),
          child: InkWell(
            splashColor: colorSecondary,
            onTap: onPressed,
            child: Center(
              child: CText(
                msg: name,
                fontSize: 4.sp,
                fontWeight: FontWeight.w600,
                fontFamily: "Poppins-Medium",
              ),
            ),
          ),
        ),
      ),
    );
  }
}
