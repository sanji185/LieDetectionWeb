// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lie_detection_web/helper/style.dart';
import 'package:sizer/sizer.dart';
import '../widgets/custom_text.dart';
import '../widgets/footer.dart';
import '../widgets/header.dart';
import '../widgets/instructions.dart';

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
                Expanded(
                  flex: 3,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Container(
                          color: Colors.red,
                        ),
                      ),
                      Expanded(
                        child: IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset(
                            "assets/images/SvgIcons/process.svg",
                            // height: 50,
                            fit: BoxFit.fitWidth,
                            width: 10,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Container(
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                  // child: Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: [
                  //     Expanded(
                  //       flex: 1,
                  //       child: Container(
                  //         color: colGreen,
                  //         height: 100,
                  //         width: 100,
                  //       ),
                  //     ),
                  //     Expanded(
                  //       flex: 1,
                  //       child: Container(
                  //         color: colBodyGrey,
                  //         height: 100,
                  //         width: 100,
                  //       ),
                  //     ),
                  //   ],
                  // ),
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
