import 'package:flutter/material.dart';
import 'package:lie_detection_web/widgets/custom_text.dart';

class AboutTabScreen extends StatelessWidget {
  const AboutTabScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: CText(msg: "About Screen"));
  }
}
