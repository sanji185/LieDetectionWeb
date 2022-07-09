import 'package:flutter/material.dart';

import '../widgets/custom_text.dart';

class BlogTabScreen extends StatelessWidget {
  const BlogTabScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CText(msg: "Blog Screen"),
    );
  }
}
