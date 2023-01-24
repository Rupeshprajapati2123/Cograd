import 'package:cograd/Pages/StartingPages/EnterNumber.dart';
import 'package:cograd/Pages/StartingPages/IntroSlider.dart';
import 'package:cograd/util/auth.dart';
// import 'package:firebase_auth_project/pages/home_page.dart';
// import 'package:firebase_auth_project/pages/login_register_page.dart';
import 'package:flutter/material.dart';

class WidgetTree extends StatefulWidget {
  const WidgetTree({Key? key}) : super(key: key);

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Auth().authStateChanges,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return EnterNumber();
        } else {
          return IntroSlider();
        }
      },
    );
  }
}
