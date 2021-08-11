import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:workout_plan/const/app_const.dart';
import 'package:workout_plan/datas/recom_data.dart';
import 'package:workout_plan/models/recom_workout.dart';
import 'package:workout_plan/pages/login_page.dart';

class DetialPage extends StatelessWidget {
  DetialPage({
    Key? key,
    required this.workout,
  }) : super(key: key);

  final RecomWorkout workout;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(375, 812),
        builder: () {
          return SafeArea(
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
              color: Color(0xff010101),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 375.h,
                    width: double.infinity,
                    child: Stack(
                      children: [
                        // Padding(
                        //   padding: appPaddingConst,
                        //   child: GestureDetector(
                        //     onTap: () {
                        //       Navigator.of(context).pop();
                        //     },
                        //     child: Icon(
                        //       Icons.arrow_back,
                        //       color: Colors.white,
                        //       size: 35,
                        //     ),
                        //   ),
                        // ),
                        Container(
                          height: 360.h,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.cyan,
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(workout.recomImg))),
                        ),
                        Container(
                          height: 370.h,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.cyan,
                              gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Colors.black.withOpacity(0.2),
                                    Colors.black,
                                  ])),
                        ),
                        Positioned(
                          top: 100 * 3.h,
                          left: 70.w,
                          child: Text('Upper Body Attack',
                              style: GoogleFonts.raleway(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w600)),
                        ),
                        Positioned(
                          top: 86 * 4.h,
                          left: 30 * 4.w,
                          child: Row(
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.local_fire_department,
                                    color: Colors.white54,
                                    size: 16,
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    'Hard',
                                    style: GoogleFonts.raleway(
                                      fontSize: 16,
                                      color: Colors.white54,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.watch_later_rounded,
                                    color: Colors.white54,
                                    size: 16,
                                  ),
                                  SizedBox(
                                    width: 6,
                                  ),
                                  Text(
                                    '45 min',
                                    style: GoogleFonts.raleway(
                                      fontSize: 16,
                                      color: Colors.white54,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
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
                      ],
                    ),
                  ),
                  Padding(
                    padding: appPaddingConst,
                    child: SizedBox(
                      width: double.infinity,
                      child: TextButtonWidget(
                        buttonColor: Color(0xff00fe79),
                        buttonText: 'Begin Workout',
                        ontap: () {},
                        textColor: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: appPaddingConst,
                    child: Text('OVERVIEW',
                        style: GoogleFonts.raleway(
                            color: Colors.white.withOpacity(0.9),
                            fontSize: 14,
                            letterSpacing: 1.0,
                            fontWeight: FontWeight.bold)),
                  ),
                  Padding(
                    padding: appPaddingConst,
                    child: Text(workout.recomFulltext,
                        style: GoogleFonts.raleway(
                          color: Colors.white.withOpacity(0.9),
                          fontSize: 18,
                        )),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: appPaddingConst,
                    child: Text('EXERCISE LIST',
                        style: GoogleFonts.raleway(
                            color: Colors.white.withOpacity(0.9),
                            fontSize: 14,
                            letterSpacing: 1.0,
                            fontWeight: FontWeight.bold)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ExerciseListWidget(),
                ],
              ),
            ),
          );
        });
  }
}

class ExerciseListWidget extends StatelessWidget {
  const ExerciseListWidget({
    Key? key,
  }) : super(key: key);
  // final RecomWorkout workout;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        // color: Colors.amber,
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: getOtherWorkoutData.length,
                itemBuilder: (BuildContext context, int index) {
                  final exerciseList = getOtherWorkoutData[index];
                  return Padding(
                    padding: appPaddingConst,
                    child: Row(
                      children: [
                        Container(
                          height: 100.h,
                          width: 120.w,
                          decoration: BoxDecoration(
                              color: Colors.cyan,
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(exerciseList.recomImg))),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(exerciseList.recomtitle,
                                style: GoogleFonts.raleway(
                                    color: Colors.white.withOpacity(0.9),
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold)),
                            Text(
                              '5 min',
                              style: GoogleFonts.raleway(
                                fontSize: 16,
                                color: Colors.white54,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Padding(
//   padding: appPaddingConst,
//   child: Row(
//     children: [
//       Container(
//         height: 100.h,
//         width: 120.w,
//         decoration: BoxDecoration(
//             color: Colors.cyan,
//             borderRadius: BorderRadius.circular(20)),
//       ),
//       SizedBox(
//         width: 20,
//       ),
//       Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(workout.recomtitle,
//               style: GoogleFonts.raleway(
//                   color: Colors.white.withOpacity(0.9),
//                   fontSize: 17,
//                   fontWeight: FontWeight.bold)),
//           Text(
//             '5 min',
//             style: GoogleFonts.raleway(
//               fontSize: 16,
//               color: Colors.white54,
//             ),
//           )
//         ],
//       )
//     ],
//   ),
// )
