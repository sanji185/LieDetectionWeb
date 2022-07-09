import 'package:flutter/material.dart';

import '../widgets/custom_text.dart';

class DashboardTabScreen extends StatelessWidget {
  const DashboardTabScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CText(msg: "Dashboard Screen"),
    );
  }
}
