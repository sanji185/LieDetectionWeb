import 'package:flutter/services.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:lie_detection_web/helper/style.dart';
import 'package:lie_detection_web/screens/home.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

var routes = <String, WidgetBuilder>{
  "/home": (BuildContext context) => const HomeScreen(),
};

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        systemNavigationBarColor: colorPrimary,
      ),
    );
    return Sizer(
      builder: (context, orientation, screenType) {
        return NeumorphicApp(
          debugShowCheckedModeBanner: false,
          title: 'Lie Detection Web Application',
          themeMode: ThemeMode.light,
          theme: NeumorphicThemeData(
            baseColor: colorPrimary,
            lightSource: LightSource.topLeft,
            depth: 10,
            appBarTheme: NeumorphicAppBarThemeData(
              color: colorPrimary,
              textStyle: TextStyle(
                  fontFamily: "Roboto",
                  fontSize: 19.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.w400),
            ),
          ),
          darkTheme: const NeumorphicThemeData(
            baseColor: colorDark,
            lightSource: LightSource.topLeft,
            depth: 6,
          ),
          initialRoute: '/home',
          routes: routes,
        );
      },
    );
  }
}
