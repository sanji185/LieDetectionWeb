import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../helper/style.dart';
import 'custom_text.dart';

class UpgradeTab extends StatelessWidget {
  final int? flex;
  final GestureTapCallback onPressed;
  const UpgradeTab({
    Key? key,
    required this.flex,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex ?? 1,
      child: Padding(
        padding: const EdgeInsets.only(top: 18.0),
        child: Align(
          alignment: Alignment.topRight,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Material(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(10.0),
                child: InkWell(
                  splashColor: colorPrimary,
                  onTap: onPressed,
                  child: CText(
                      msg: "Upgrade ",
                      fontSize: 4.sp,
                      color: colorFontHighlighter,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Image.asset(
                "assets/images/Icons/premium.png",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
