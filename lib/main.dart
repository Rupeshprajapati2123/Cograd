import 'package:cograd/Pages/StartingPages/EnterNumber.dart';
import 'package:cograd/Pages/StartingPages/IntroSlider.dart';
import 'package:cograd/Pages/StartingPages/LoginPage.dart';
import 'package:cograd/Pages/StartingPages/otp_screen.dart';
import 'package:cograd/Pages/home.dart';
import 'package:cograd/widget_tree.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

// import 'package:cograd/util/auth.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fl',
      theme:
          ThemeData(primaryColor: Colors.white, backgroundColor: Colors.white),
      home:  WidgetTree(),//InntroSlider
        // initialRoute: IntroSlider.id,
        routes: {
        OtpScreen.id:(context)=>OtpScreen(),
          LoginPage.id: (context) =>  LoginPage(),
          Home.id: (context) =>  Home(),
          EnterNumber.id: (context) =>  EnterNumber(),
        }
    );

  }
}
