import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Processing extends StatelessWidget {
  final Function onTap;
  const Processing({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap(),
        splashColor: Colors.white10,
        child: SvgPicture.asset(
          "assets/images/SvgIcons/process.svg",
          height: 100,
          width: 100,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
