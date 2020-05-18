import 'package:evgeshayoga/ui/login_screen.dart';
import 'package:evgeshayoga/ui/video_content/programs_screen.dart';
import 'package:evgeshayoga/utils/animator.dart';
import 'package:evgeshayoga/utils/get_start_screen.dart';
import 'package:evgeshayoga/utils/style.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
          primaryColor: Style.pinkMain,
          textTheme: TextTheme(
              headline5: Style.titleTextStyle,
              headline6: Style.headerTextStyle,
              bodyText2: Style.regularTextStyle,
              bodyText1: Style.regularTextStyle,
          ),
      ),
      debugShowCheckedModeBanner: false,
      title: "Йога с Женей",
      initialRoute: '/',
      home: StartScreen(),
      routes: <String, WidgetBuilder>{
        '/home': (BuildContext context) => HomeAnimator(),
        '/login': (BuildContext context) => Login(),
        '/programs': (BuildContext context) => Programs(),
      },
    ),
  );
}
