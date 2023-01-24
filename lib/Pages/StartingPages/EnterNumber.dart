import 'package:cograd/Pages/StartingPages/otp_screen.dart';
import 'package:cograd/util/MyButton.dart';
import 'package:cograd/util/MyTextField.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EnterNumber extends StatelessWidget {
  static const String id="EnterNumber";
  // final _usernameController = TextEditingController();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Awesome Credit Card Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Awesome Credit Card Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, this.title}) : super(key: key);
  final String? title;
  final _usernameController = TextEditingController();
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _usernameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(

      body: Column(
        children: [
          Column(
            children: [
              Container(
                alignment: Alignment.center,
                height: 100,
                width: size.width,
                color: Color(0xfff0f0f2),
                padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Text(
                  'Continue with phone',
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Container(
                // height: 200,
                padding: EdgeInsets.fromLTRB(0, 0, 0, 40),
                width: size.width,
                color: Color(0xfff0f0f2),
                child: Image(
                  width: 145,
                  height: 145,
                  image: AssetImage('assets/images/phone.png'),
                ),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 0, 25),
            child: Text('Enter your phone number',
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                )),
          ),
          MyTextField(
            controller: _usernameController,
            hintText: 'Enter Number',
            obscureText: false,
            type: TextInputType.number,
          ),
          Container(
              margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
              child: MyButton(text: 'Continue', onTap: () => {
                Navigator.push(context,
                MaterialPageRoute(builder: (context) => OtpScreen()))
              })),
        ],
      ),
    );
  }
}
