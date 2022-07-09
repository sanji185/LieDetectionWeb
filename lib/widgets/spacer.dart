import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FlexSpacer extends StatelessWidget {
  final int? flex;
  const FlexSpacer({
    Key? key,
    this.flex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex ?? 1,
      child: const SizedBox(),
    );
  }
}
