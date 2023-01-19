import 'package:flutter/material.dart';
// import '../../../constants.dart';

class Testing extends StatelessWidget {
  Testing({super.key});
  final List<String> imgList = [
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
  ];
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
            //   margin: EdgeInsets.only(bottom: 12),
            //   // It will cover 20% of our total height
            //   height: size.height * 0.8,
            //   child: Row(children: <Widget>[
            //     Stack(
            //       children: <Widget>[
            //         Container(
            //           padding: EdgeInsets.only(
            //             left: 16,
            //             // right: kDefaultPadding,
            //             bottom: 36 + kDefaultPadding,
            //           ),
            //           height: size.height * 0.3 - 37,
            //           decoration: BoxDecoration(
            //             color: Color(0xff3D5CFF),
            //             // borderRadius: BorderRadius.only(
            //             //   bottomLeft: Radius.circular(36),
            //             //   bottomRight: Radius.circular(36),
            //             // ),
            //           ),
            //           child: Row(
            //             children: <Widget>[
            //               Text(
            //                 'Hi Kristin!',
            //                 // style: Theme.of(context).textTheme.headline5.copyWith(
            //                 //     color: Colors.green, fontWeight: FontWeight.bold),
            //               ),
            //               Spacer(),
            //               // Image.asset("assets/images/logo.png")
            //             ],
            //           ),
            //         ),
            //         Positioned(
            //           bottom: 400,
            //           top: 156,
            //           left: 0,
            //           right: 0,
            //           child: Container(
            //             alignment: Alignment.center,
            //             margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            //             padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            //             height: 96,
            //             decoration: BoxDecoration(
            //               color: Colors.yellow,
            //               borderRadius: BorderRadius.circular(20),
            //               boxShadow: [
            //                 // BoxShadow(
            //                 //   offset: Offset(0, 10),
            //                 //   blurRadius: 50,
            //                 //   color: Colors.red,
            //                 // ),
            //               ],
            //             ),
            //             child: Row(
            //               children: <Widget>[
            //                 Expanded(child: Container())
            //                 // Expanded(
            //                 //   child: TextField(
            //                 //     onChanged: (value) {},
            //                 //     decoration: InputDecoration(
            //                 //       hintText: "Search",
            //                 //       hintStyle: TextStyle(
            //                 //         color: Colors.white,
            //                 //       ),
            //                 //       enabledBorder: InputBorder.none,
            //                 //       focusedBorder: InputBorder.none,
            //                 //       // surffix isn't working properly  with SVG
            //                 //       // thats why we use row
            //                 //       // suffixIcon: SvgPicture.asset("assets/icons/search.svg"),
            //                 //     ),
            //                 //   ),
            //                 // ),
            //
            //                 // SvgPicture.asset("assets/icons/search.svg"),
            //               ],
            //             ),
            //           ),
            //         ),
            //       ],
            //     ),
            //     Positioned(
            //       top: 190,
            //       width: size.width,
            //       child: CarouselSlider(
            //         options: CarouselOptions(
            //           height: 400.0,
            //         ),
            //         items: imgList.map((item) {
            //           return Builder(
            //             builder: (BuildContext context) {
            //               return Container(
            //                   width: 400,
            //                   child: Center(
            //                       child: Image.network(item,
            //                           fit: BoxFit.cover, width: 1000)));
            //             },
            //           );
            //         }).toList(),
            //       ),
            //     ),
            //     Positioned(top: 520, left: 22, child: Text('Learning Plan ')),
            //     Container(
            //       height: 280,
            //       color: Colors.black,
            //       width: size.width * 0.9,
            //       margin: EdgeInsets.fromLTRB(20, 540, 20, 0),
            //       // padding: EdgeInsets.fromLTRB(25, 20, 25, 20),
            //       child: Card(
            //         color: Colors.red,
            //         child: Column(
            //           children: [
            //             Container(
            //               margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
            //               child: Row(
            //                 children: [
            //                   Text('Packaging design'),
            //                   Spacer(),
            //                   Text('40/48')
            //                 ],
            //               ),
            //             ),
            //             Container(
            //               margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
            //               child: Row(
            //                 children: [Text('Product design'), Spacer(), Text('6/24')],
            //               ),
            //             )
            //           ],
            //         ),
            //       ),
            //     ),
            //     // Positioned(
            //     //     top: 600,
            //     //     // bottom: 300,
            //     //     child: Card(
            //     //       child: Image(
            //     //         image: AssetImage('assets/images/Meetup.png'),
            //     //       ),
            //     //     ))
            //   ]),
            // )
            ));
  }
}
