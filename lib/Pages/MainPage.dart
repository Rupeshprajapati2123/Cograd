import 'package:flutter/material.dart';

// import '../../../constants.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});
  double kDefaultPadding = 14;
  // Key key,
  // @required this.size,
  // }) : super(key: key);

  // final Size size;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(bottom: 12),
        // It will cover 20% of our total height
        height: size.height * 0.3,
        child: Stack(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(
                left: 16,
                // right: kDefaultPadding,
                bottom: 36 + kDefaultPadding,
              ),
              height: size.height * 0.3 - 37,
              decoration: BoxDecoration(
                color: Color(0xff3D5CFF),
                // borderRadius: BorderRadius.only(
                //   bottomLeft: Radius.circular(36),
                //   bottomRight: Radius.circular(36),
                // ),
              ),
              child: Row(
                children: <Widget>[
                  Text(
                    'Hi Kristin!',
                    // style: Theme.of(context).textTheme.headline5.copyWith(
                    //     color: Colors.green, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  // Image.asset("assets/images/logo.png")
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                height: 96,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    // BoxShadow(
                    //   offset: Offset(0, 10),
                    //   blurRadius: 50,
                    //   color: Colors.red,
                    // ),
                  ],
                ),
                child: Row(
                  children: <Widget>[
                    Expanded(child: Container())
                    // Expanded(
                    //   child: TextField(
                    //     onChanged: (value) {},
                    //     decoration: InputDecoration(
                    //       hintText: "Search",
                    //       hintStyle: TextStyle(
                    //         color: Colors.white,
                    //       ),
                    //       enabledBorder: InputBorder.none,
                    //       focusedBorder: InputBorder.none,
                    //       // surffix isn't working properly  with SVG
                    //       // thats why we use row
                    //       // suffixIcon: SvgPicture.asset("assets/icons/search.svg"),
                    //     ),
                    //   ),
                    // ),

                    // SvgPicture.asset("assets/icons/search.svg"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
