// import '../../../constants.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
class MPage extends StatelessWidget {
  MPage({super.key});
  final List<String> imgList = [
    'assets/images/ads.png',
    'assets/images/ads.png',
    'assets/images/ads.png',
    'assets/images/ads.png',
    'assets/images/ads.png',
    'assets/images/ads.png'
  ];
  double kDefaultPadding = 14;
  // Key key,
  // @required this.size,
  // }) : super(key: key);

  // final Size size;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Container(
        // height: 200,
        // width: 400,
        child: Column(
          children: [
            Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(
                    left: kDefaultPadding,
                    right: kDefaultPadding,
                    bottom: 36 + kDefaultPadding,
                  ),
                  height: size.height * 0.2 - 27,
                  decoration: BoxDecoration(
                    color: Color(0xff3d5cff),

                  ),
                  child: Row(
                    children: <Widget>[
                      Text(
                        'Hi, Kiristin',
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Spacer(),
                      Image.asset("assets/images/Avatar.png")
                    ],
                  ),
                ),
                Container(
                  child:Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  top:80,
                  child: Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        // BoxShadow(
                        //   offset: Offset(0, 10),
                        //   blurRadius: 50,
                        //   color: kPrimaryColor.withOpacity(0.23),
                        // ),
                      ],
                    ),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            // height: 220,
                            child: Text('Learned Today'),
                          ),
                        ),
                        // SvgPicture.asset("assets/icons/search.svg"),
                      ],
                    ),
                  ),
                ),),
              ],
            ),
            Container(
              child: Expanded(
                child: CarouselSlider(
                  options: CarouselOptions(
                    height: 400.0,
                  ),
                  items: imgList.map((item) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                            width: 400,
                            child: Center(
                                child: Image(
                                  image: AssetImage(item),
                                )));
                      },
                    );
                  }).toList(),
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.fromLTRB(22, 0, 0, 10),
              child:Text(

                'Learning Plan',
                style: GoogleFonts.poppins(
                  color: Color(0xff1f1f39),
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Container(
              height: 140,
              color: Colors.white,
              width: size.width * 0.9,
              // margin: EdgeInsets.fromLTRB(20, 540, 20, 0),
              // padding: EdgeInsets.fromLTRB(25, 20, 25, 20),
              child: Card(
                color: Colors.white,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(10, 20, 0, 0),
                      child: Row(
                        children: [
                          Text(
                            'Packaging Design',
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Spacer(),
                          Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                          child:Text(

                            '40/48',
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(10, 20, 0, 0),
                      child: Row(
                        children: [
                          Text(
                            'Product Design',
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Spacer(),

                          Container(
    margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                          child:Text(
                            '6/24',
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),)
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              child: Card(
                child: Image(
                  image: AssetImage('assets/images/Meetup.png'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
