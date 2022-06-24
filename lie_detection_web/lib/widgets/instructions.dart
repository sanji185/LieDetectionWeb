import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';
import '../helper/style.dart';
import 'custom_text.dart';

class InstructionText extends StatelessWidget {
  final String instructionText;
  const InstructionText({
    Key? key,
    required this.instructionText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: SvgPicture.asset("assets/images/SvgIcons/bullet.svg"),
          ),
          Flexible(
            child: CText(
              msg: instructionText,
              fontSize: 4.sp,
              fontWeight: FontWeight.normal,
              color: colorDark,
            ),
          ),
        ],
      ),
    );
  }
}
