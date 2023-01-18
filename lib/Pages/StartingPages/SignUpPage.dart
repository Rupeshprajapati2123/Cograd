// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:modernloginui/pages/login_page.dart';
import 'package:modernloginui/util/my_button.dart';
import 'package:modernloginui/util/my_textfield.dart';

import './welcum.dart';

// import 'package:'
class SignupPage extends StatelessWidget {
  SignupPage({super.key});
  static const String id = "signupPage";
  // controllers for textfield
  bool showspin = false;
  final _auth = FirebaseAuth.instance;
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 100),

                // hello again
                // Text(
                //   'HELLO AGAIN!',
                //   style: GoogleFonts.bebasNeue(fontSize: 48),
                // ),
                Image(image: AssetImage('lib/images/logo.png')),
                // you been missed
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Sign Up',
                  style: TextStyle(color: Color(0xFF04459F), fontSize: 26),
                ),

                const SizedBox(height: 50),

                // username textfield
                MyTextField(
                  controller: _usernameController,
                  hintText: 'Username',
                  obscureText: false,
                ),

                const SizedBox(height: 10),

                // password textfield
                MyTextField(
                  controller: _passwordController,
                  hintText: 'Password',
                  obscureText: true,
                ),

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
                MyButton(
                    text: 'Sign Up',
                    onTap: () async {
                      try {
                        final newUser =
                            await _auth.createUserWithEmailAndPassword(
                                email: _usernameController.text,
                                password: _passwordController.text);
                        if (newUser != null) {
                          Navigator.pushNamed(context, Welcome.id);
                        }
                      } catch (e) {
                        print(e);
                      }
                    }),

                const SizedBox(height: 50),

                // or continue with
                // Padding(
                //   padding: const EdgeInsets.symmetric(horizontal: 25.0),
                //   child: Row(
                //     children: [
                //       Expanded(
                //         child: Divider(
                //           color: Colors.grey[400],
                //           thickness: 0.5,
                //         ),
                //       ),
                //       Padding(
                //         padding: const EdgeInsets.symmetric(horizontal: 10.0),
                //         child: Text(
                //           'Or continue with',
                //           style: TextStyle(color: Colors.grey[700]),
                //         ),
                //       ),
                //       Expanded(
                //         child: Divider(
                //           color: Colors.grey[400],
                //           thickness: 0.5,
                //         ),
                //       ),
                //     ],
                //   ),
                // ),

                const SizedBox(height: 50),

                // apple + google sign in

                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: const [
                //     // google
                //     SquareTile(imagePath: 'lib/images/google.png'),
                //
                //     SizedBox(width: 25),
                //
                //     // apple
                //     SquareTile(imagePath: 'lib/images/apple.png'),
                //   ],
                // ),

                const SizedBox(height: 50),

                // not a member? register now
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an Account?',
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                    const SizedBox(width: 4),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, LoginPage.id);
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
            ),
          ),
        ),
      ),
    );
  }
}