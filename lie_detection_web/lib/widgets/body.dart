import 'package:flutter/material.dart';
import 'processing.dart';

class Body extends StatelessWidget {
  final Function processingOnTap;
  const Body({
    Key? key,
    required this.processingOnTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.red,
            ),
          ),
          Processing(onTap: processingOnTap),
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
