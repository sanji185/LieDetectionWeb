import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../helper/style.dart';
import 'custom_text.dart';
import 'instructions.dart';

class Footer extends StatelessWidget {
  final String instructionText1;
  final String instructionText2;
  final String instructionText3;
  const Footer({
    Key? key,
    required this.instructionText1,
    required this.instructionText2,
    required this.instructionText3,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0, left: 8.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: CText(
                  msg: "Instruction:",
                  fontSize: 6.sp,
                  fontWeight: FontWeight.bold,
                  color: colorDark,
                ),
              ),
            ),
            InstructionText(instructionText: instructionText1),
            InstructionText(instructionText: instructionText2),
            InstructionText(instructionText: instructionText3),
          ],
        ),
      ),
    );
  }
}
