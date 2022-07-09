import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  final int? flex;
  final String logo;
  const Logo({Key? key, required this.logo, this.flex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex ?? 1,
      child: Padding(
        padding: const EdgeInsets.all(28.0),
        child: Image.asset(
          logo,
        ),
      ),
    );
  }
}
