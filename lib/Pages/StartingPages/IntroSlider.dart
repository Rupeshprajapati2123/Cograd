import 'package:cograd/Pages/StartingPages/LoginPage.dart';
import 'package:cograd/Pages/StartingPages/SignUpPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroSlider extends StatefulWidget {
  static const String id="IntroSlider";
  @override
  _IntroSliderState createState() => _IntroSliderState();
}

class _IntroSliderState extends State<IntroSlider> {

  final int _numPages = 3;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      height: 8.0,
      width: isActive ? 24.0 : 16.0,
      decoration: BoxDecoration(
        color: isActive ? Color(0xff3D5CFF) : Color(0xffEAEAFF),
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomPadding: false,
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.white,
                Colors.white,
                // Color.fromARGB(100, 92, 225, 230),
                // Color.fromARGB(100, 56, 182, 255),
              ],
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () => {}
                    // Navigator.push(context,
                    // MaterialPageRoute(builder: (context) => SignUpPage())),
                    ,
                    child: Text(
                      'Skip',
                      style: TextStyle(
                        color: Color(0xff858597),
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height - 180,
                  child: PageView(
                    physics: ClampingScrollPhysics(),
                    controller: _pageController,
                    onPageChanged: (int page) {
                      setState(() {
                        _currentPage = page;
                      });
                    },
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Center(
                              child: Image(
                                image: AssetImage(
                                  'assets/images/first.png',
                                ),
                                height:
                                    MediaQuery.of(context).size.height - 420,
                                width: MediaQuery.of(context).size.width - 100,
                              ),
                            ),
                            // SizedBox(height: 10.0),
                            Center(
                              child: Text(
                                'Numerous free\n '
                                'trial courses',
                                style: GoogleFonts.poppins(
                                    color: Color(0xff1F1F39),
                                    fontSize: 22,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Center(
                              child: Text(
                                "Free courses for you to\n find your way to learning",
                                style: GoogleFonts.poppins(
                                    color: Color(0xff858597),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Center(
                              child: Image(
                                image: AssetImage(
                                  'assets/images/second.png',
                                ),
                                height:
                                    MediaQuery.of(context).size.height - 420,
                                width: MediaQuery.of(context).size.width - 100,
                              ),
                            ),
                            Center(
                              child: Text(
                                "Quick and easy\n learning",
                                style: GoogleFonts.poppins(
                                    color: Color(0xff1F1F39),
                                    fontSize: 22,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                            Center(
                                child: Text(
                              "Easy and fast learning at\n any time to help you\n improve various skills",
                              style: GoogleFonts.poppins(
                                  color: Color(0xff858597),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18),
                            )),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Center(
                              child: Image(
                                image: AssetImage(
                                  'assets/images/third.png',
                                ),
                                height:
                                    MediaQuery.of(context).size.height - 420,
                                width: MediaQuery.of(context).size.width - 100,
                              ),
                            ),
                            Center(
                              child: Text(
                                "Create your own\n study plan",
                                style: GoogleFonts.poppins(
                                    color: Color(0xff1F1F39),
                                    fontSize: 22,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                            SizedBox(
                              height: 18,
                            ),
                            Center(
                              child: Text(
                                "Study according to the\n study plan, make study\n more motivated",
                                style: GoogleFonts.poppins(
                                  color: Color(0xff858597),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: _buildPageIndicator(),
                ),
                _currentPage != _numPages - 1
                    ? Expanded(
                        child: Align(
                          alignment: FractionalOffset.bottomRight,
                          child: TextButton(
                            onPressed: () {
                              _pageController.nextPage(
                                duration: Duration(milliseconds: 500),
                                curve: Curves.ease,
                              );
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Text(
                                  'Next',
                                  style: TextStyle(
                                    color: Color(0xff858597),
                                    fontSize: 22.0,
                                  ),
                                ),
                                SizedBox(width: 10.0),
                                Icon(
                                  Icons.arrow_forward,
                                  color: Color(0xff1F1F39),
                                  size: 30.0,
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    : Text(''),
              ],
            ),
          ),
        ),
      ),
      bottomSheet: _currentPage == _numPages - 1
          ? Row(children: <Widget>[
              Spacer(),
              GestureDetector(
                  onTap: () => {print('pressed')},
                  // Navigator.push(context,
                  // MaterialPageRoute(builder: (context) => SignUpPage())),
                  child: Container(
                    height: 60.0,
                    width: 160,
                    color: Color(0xff3D5CFF),
                    child: GestureDetector(
                      onTap: () => {},
                      // Navigator.push(context,
                      // MaterialPageRoute(builder: (context) => SignUpPage())),
                      child: Center(
                        child: Padding(
                          padding: EdgeInsets.all(0),
                          child: Center(
                            child: Text(
                              'Log In',
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )),
              Spacer(),
              GestureDetector(
                  onTap: () => {         },
                  // Navigator.push(context,
                  // MaterialPageRoute(builder: (context) => SignUpPage())),
                  child: Container(
                    height: 60.0,
                    width: 160,
                    color: Color(0xffff),
                    child: GestureDetector(
                      onTap: () => {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context)=>SignupPage()))
                      },
                      // Navigator.push(context,
                      // MaterialPageRoute(builder: (context) => SignUpPage())),
                      child: Center(
                        child: Padding(
                          padding: EdgeInsets.all(0),
                          child: Center(
                            child: Text(
                              'Sign Up',
                              style: GoogleFonts.poppins(
                                color: Color(0xff3D5CFF),
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )),
              Spacer(),
            ])
          : Text(''),
    );
  }
}
