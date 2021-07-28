// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:home/Ui/tabBar.dart';
// import 'package:home/model/model.dart';

// // ignore: must_be_immutable
// class ContinerWidget extends StatefulWidget {
//   @override
//   _ContinerWidgetState createState() => _ContinerWidgetState();
// }

// class _ContinerWidgetState extends State<ContinerWidget> {

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.fromLTRB(30, 20, 10, 10),
//       child: Container(
//         height: MediaQuery.of(context).size.height / 5.5,
//         width: MediaQuery.of(context).size.width / 1.3,
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(20),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.grey.shade200,
//               spreadRadius: 0,
//               blurRadius: 10,
//               offset: Offset(0, 5), // changes position of shadow
//             ),
//           ],
//         ),
//         child: Row(
//           children: [
//             Container(
//               height: MediaQuery.of(context).size.height / 5.5,
//               width: MediaQuery.of(context).size.width / 3.5,
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.only(
//                       topLeft: Radius.circular(20),
//                       bottomLeft: Radius.circular(20)),
//                   color: Colors.limeAccent,
//                   image: DecorationImage(
//                     image: NetworkImage(
//                         'https://pix8.agoda.net/hotelImages/186483/0/f2eb5e7e21b54044ba2d8c0780f8b81b.jpg?s=450x450'),
//                     fit: BoxFit.cover,
//                   )),
//             ),
//             Padding(
//               padding: const EdgeInsets.fromLTRB(25, 15, 0, 10),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     'Beach Hotel California',
//                     style: GoogleFonts.raleway(
//                         fontSize: 14,
//                         fontWeight: FontWeight.w700,
//                         color: Color(0xff212121)),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(top: 10.0),
//                     child: IconWidgets(),
//                   ),
//                   Padding(
//                       padding: const EdgeInsets.only(top: 10.0),
//                       child: Container(
//                         height: 28,
//                         width: 85,
//                         decoration: BoxDecoration(
//                           color: Colors.black,
//                           borderRadius: BorderRadius.circular(20),
//                         ),
//                         child: Center(
//                           child: Text(
//                             "Exclusive",
//                             style: GoogleFonts.openSans(
//                                 fontSize: 12.5,
//                                 fontWeight: FontWeight.w500,
//                                 color: Colors.white),
//                           ),
//                         ),
//                       )),
//                   SizedBox(
//                     height: 1,
//                   ),
//                   Row(
//                     children: [
//                       Text(
//                         "\$170",
//                         style: GoogleFonts.openSans(
//                           fontSize: 20,
//                           fontWeight: FontWeight.bold,
//                           color: Color(0xff212121),
//                         ),
//                       ),
//                       Text(
//                         '/Night',
//                         style: GoogleFonts.openSans(
//                           fontSize: 12,
//                           fontWeight: FontWeight.w300,
//                           color: Color(0xff212121),
//                         ),
//                       ),
//                       SizedBox(
//                         width: 55,
//                       ),
//                       Icon(Icons.bookmark_outline)
//                     ],
//                   )
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }



// Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Row(
//               children: [
//                 Expanded(
//                   child: ListView.builder(
//                     itemCount: 1,
//                     shrinkWrap: true,
//                     physics: NeverScrollableScrollPhysics(),
//                     itemBuilder: (_, index) {
//                       return Container(
//                         height: 250,
//                         width: 50,
//                         color: Colors.amber,
//                         child: Text(''),
//                       );
//                     },
//                   ),
//                 )
//               ],
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             Padding(
//               padding: const EdgeInsets.only(left: 30.0),
//               child: Text(
//                 'Latest Popular',
//                 style: GoogleFonts.openSans(
//                   fontSize: 18,
//                   color: Colors.grey.shade700,
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 5,
//             ),
//             SingleChildScrollView(
//               scrollDirection: Axis.horizontal,
//               child: Padding(
//                 padding: const EdgeInsets.only(left: 15.0),
//                 child: Row(
//                   children: [
//                     LastestCategoriesWidget(),
//                     LastestCategoriesWidget(),
//                     LastestCategoriesWidget(),
//                     LastestCategoriesWidget(),
//                     LastestCategoriesWidget(),
//                   ],
//                 ),
//               ),
//             )
//           ],
//         ),