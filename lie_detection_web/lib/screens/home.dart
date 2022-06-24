import 'package:flutter/material.dart';
import '../helper/style.dart';
import '../widgets/body.dart';
import '../widgets/footer.dart';
import '../widgets/header.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Expanded(
          child: Container(
            decoration: bgDecoration,
            child: Column(
              children: [
                const Header(
                    image: "images/camera.png", text: "Lie DetectionSystem"),
                Body(
                  processingOnTap: () {},
                ),
                const Footer(
                  instructionText1: instruction1,
                  instructionText2: instruction2,
                  instructionText3: instruction3,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
