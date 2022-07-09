import 'package:flutter/material.dart';

import '../widgets/custom_text.dart';

class FeedbackTabScreen extends StatelessWidget {
  const FeedbackTabScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CText(msg: "Feedback Screen"),
    );
  }
}
