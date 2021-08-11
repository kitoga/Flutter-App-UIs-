import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_workout/Datas/workout_data.dart';
import 'package:ui_workout/const/app_constant.dart';
import 'package:ui_workout/UI/data_page.dart';

class DashBoard extends StatefulWidget {
  DashBoard({Key? key}) : super(key: key);

  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      builder: () => SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          color: Color(0xff010101),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: appPaddingConst,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 35,
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: appPaddingConst,
                child: Text('Thursday, November 26th',
                    style: GoogleFonts.raleway(
                        color: Colors.white.withOpacity(0.7),
                        fontSize: 15,
                        fontWeight: FontWeight.w600)),
              ),
              Padding(
                padding: appPaddingConst,
                child: Text("Let's crush it, Jack 🔥",
                    style: GoogleFonts.raleway(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold)),
              ),
              Padding(
                padding: appPaddingConst,
                child: Container(
                    height: 60.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xff151515),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 4,
                          child: TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.transparent)),
                                enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.transparent)),
                                filled: true,
                                fillColor: Colors.transparent,
                                hintText: 'Search anthing...',
                                hintStyle: GoogleFonts.raleway(
                                    color: Colors.white.withOpacity(0.6),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500),
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 30.w, vertical: 14.h)),
                          ),
                        ),
                        Expanded(
                            child: Padding(
                          padding:
                              const EdgeInsets.only(right: 15.0, left: 15.0),
                          child: Container(
                            height: 45.h,
                            width: 10.w,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Icon(Icons.search),
                          ),
                        ))
                      ],
                    )),
              ),
              SizedBox(
                height: 10.h,
              ),
              BulkWorkoutSection(),
            ],
          ),
        ),
      ),
    );
  }
}

class BulkWorkoutSection extends StatelessWidget {
  const BulkWorkoutSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              RecomendedWorkout(), /////RecommendedWorkoutWidget
              SizedBox(
                height: 15.h,
              ),
              BuildSpecialOffer(), /////// buildSpecialOfferWidget
              SizedBox(
                height: 15.h,
              ),
              BuildOtherWorkoutWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

class BuildOtherWorkoutWidget extends StatelessWidget {
  const BuildOtherWorkoutWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: appPaddingConst,
          child: Text('OTHER WORKOUTS',
              style: GoogleFonts.raleway(
                  color: Colors.white.withOpacity(0.9),
                  fontSize: 14,
                  fontWeight: FontWeight.w600)),
        ),
        SizedBox(
          height: 10.h,
        ),
        Container(
          height: 310.h,
          // color: Colors.amberAccent,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: getOtherWorkoutData.length,
            itemBuilder: (BuildContext context, int index) {
              final otherData = getOtherWorkoutData[index];
              return Row(
                children: [
                  Padding(
                    padding: appPaddingConst,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 200.h,
                          width: 340.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.cyan,
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(otherData.recomImg))),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Text(otherData.recomtitle,
                            style: GoogleFonts.raleway(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w600)),
                        SizedBox(
                          height: 6,
                        ),
                        Text(otherData.recomtext,
                            textAlign: TextAlign.left,
                            style: GoogleFonts.raleway(
                                height: 1.0,
                                color: Colors.white.withOpacity(0.6),
                                fontSize: 16,
                                fontWeight: FontWeight.w400)),
                      ],
                    ),
                  )
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}

class BuildSpecialOffer extends StatelessWidget {
  const BuildSpecialOffer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: appPaddingConst,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('SPECIAL OFFER',
              style: GoogleFonts.raleway(
                  color: Colors.white.withOpacity(0.9),
                  fontSize: 14,
                  fontWeight: FontWeight.w600)),
          SizedBox(
            height: 15.h,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              height: 100.h,
              width: MediaQuery.of(context).size.width,
              color: Color(0xff141414),
              child: Row(
                children: [
                  Container(
                    height: 80.h,
                    width: 100.w,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0, top: 3),
                      child: Stack(
                        children: [
                          Positioned(
                            top: 20.h,
                            left: 10.w,
                            child: Transform.rotate(
                              angle: 60,
                              child: Icon(
                                Icons.star,
                                color: Colors.green,
                                size: 45,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 5,
                            left: 20.w,
                            child: Transform.rotate(
                              angle: -300,
                              child: BackdropFilter(
                                filter:
                                    ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
                                child: Icon(
                                  Icons.star,
                                  color: Colors.green.withOpacity(0.2),
                                  size: 55,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Text(
                      'Invite 4 friends and get a free \nPremium plan for 1 month!',
                      style: GoogleFonts.raleway(
                          color: Colors.white.withOpacity(0.9),
                          fontSize: 17.h,
                          fontWeight: FontWeight.w600))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RecomendedWorkout extends StatefulWidget {
  RecomendedWorkout({Key? key}) : super(key: key);

  @override
  _RecomendedWorkoutState createState() => _RecomendedWorkoutState();
}

class _RecomendedWorkoutState extends State<RecomendedWorkout> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: appPaddingConst,
          child: Text('RECOMMENDED WORKOUTS',
              style: GoogleFonts.raleway(
                  color: Colors.white.withOpacity(0.9),
                  fontSize: 14,
                  fontWeight: FontWeight.w600)),
        ),
        SizedBox(
          height: 10.h,
        ),
        Container(
          height: 290.h,
          // color: Colors.amberAccent,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: getRecomData.length,
            itemBuilder: (BuildContext context, int index) {
              final recomData = getRecomData[index];
              return Row(
                children: [
                  Padding(
                    padding: appPaddingConst,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              PageRouteBuilder(
                                transitionDuration: Duration(seconds: 1),
                                reverseTransitionDuration: Duration(seconds: 1),
                                pageBuilder:
                                    (context, animation, secondaryAnimation) {
                                  final curvedAnimation = CurvedAnimation(
                                    parent: animation,
                                    curve: Interval(0, 0.5),
                                  );

                                  return FadeTransition(
                                    opacity: curvedAnimation,
                                    child: Material(
                                        type: MaterialType.transparency,
                                        child: DetialPageWidget(
                                            workout: recomData)),
                                  );
                                },
                              ),
                            );
                          },
                          child: Container(
                            height: 180.h,
                            width: 250.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.cyan,
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(recomData.recomImg))),
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(recomData.recomtitle,
                            style: GoogleFonts.raleway(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w600)),
                        SizedBox(
                          height: 6,
                        ),
                        Text(recomData.recomtext,
                            textAlign: TextAlign.left,
                            style: GoogleFonts.raleway(
                                height: 1.2,
                                color: Colors.white.withOpacity(0.6),
                                fontSize: 14,
                                fontWeight: FontWeight.w400)),
                      ],
                    ),
                  )
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}

// Material(type: MaterialType.transparency, child: LoginPage()),



// Navigator.of(context).push(
//                     PageRouteBuilder(
//                       transitionDuration: Duration(seconds: 1),
//                       reverseTransitionDuration: Duration(seconds: 1),
//                       pageBuilder: (context, animation, secondaryAnimation) {
//                         final curvedAnimation = CurvedAnimation(
//                           parent: animation,
//                           curve: Interval(0, 0.5),
//                         );

//                         return FadeTransition(
//                           opacity: curvedAnimation,
//                           child: DetailPage(
//                             hotels: hotel,
//                           ),
//                         );
//                       },
//                     ),
//                   );
