// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:modernloginui/pages/login_page.dart';
import 'package:cograd/util/MyButton.dart';
import 'package:cograd/util/MyTextField.dart';
import 'package:cograd/util/SquareTile.dart';
import 'package:flutter/material.dart';
// import './welcum.dart';

// import 'package:'
class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  static const String id = "signupPage";
  // controllers for textfield
  bool showspin = false;
  // final _auth = FirebaseAuth.instance;
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,

            // crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Container(
                padding: EdgeInsets.fromLTRB(24, 0, 0, 10),
                color: Color(0xfff0f0f2),
                height: 168,
                width: size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Log In`',
                      style: TextStyle(color: Color(0xFF04459F), fontSize: 26),
                    ),
                    SizedBox(),
                    Text('Enter your details below & free sign up'),
                  ],
                ),
              ),
              const SizedBox(height: 50),

              // username textfield
              Text('your email'),
              MyTextField(
                controller: _usernameController,
                hintText: 'Username',
                obscureText: false,
                type: TextInputType.emailAddress,
              ),

              const SizedBox(height: 10),
              Text('your password'),
              // password textfield
              MyTextField(
                  controller: _passwordController,
                  hintText: 'Password',
                  obscureText: true,
                  type: TextInputType.text),

              const SizedBox(height: 10),

              // forgot password
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Password',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              // sign in button
              MyButton(text: 'Create Account', onTap: () {}
                  // async {
                  //   try {
                  //     final newUser =
                  //     await _auth.createUserWithEmailAndPassword(
                  //         email: _usernameController.text,
                  //         password: _passwordController.text);
                  //     if (newUser != null) {
                  //       // Navigator.pushNamed(context, Welcome.id);
                  //     }
                  //   } catch (e) {
                  //     print(e);
                  //   }
                  // }
                  ),

              // or continue with
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: Colors.grey[400],
                        thickness: 0.5,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'Or continue with',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        color: Colors.grey[400],
                        thickness: 0.5,
                      ),
                    ),
                  ],
                ),
              ),
              //
              // apple + google sign in
              //
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  // google
                  SquareTile(imagePath: 'assets/images/google.png'),

                  SizedBox(width: 25),

                  // apple
                  SquareTile(imagePath: 'assets/images/facebook.png'),
                ],
              ),

              // not a member? register now
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an Account?",
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                  const SizedBox(width: 4),
                  TextButton(
                    onPressed: () {
                      // Navigator.pushNamed(context, LoginPage.id);
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              )
            ],
            // ),
          ),
        ),
      ),
    );
  }
}
