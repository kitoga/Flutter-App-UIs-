import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_workout/helper/custom_navigation.dart';
import 'package:ui_workout/pages/dasboard_page.dart';

class LoginWidgetPage extends StatelessWidget {
  const LoginWidgetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(375, 812),
        builder: () => Column(children: [
              Stack(
                children: [
                  Container(
                    child: Image(
                      height: MediaQuery.of(context).size.height,
                      width: double.infinity,
                      image: AssetImage(
                        'asset/images.damir.jpg',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                          Colors.black.withOpacity(0.65),
                          Colors.black,
                        ])),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height,
                    width: double.infinity,
                    color: Colors.transparent,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('Become stronger with \n our workout plans',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.raleway(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(
                            height: 15.h,
                          ),
                          Text(
                              'Our premade workout plans will help your\n become a better version of yourself.',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.raleway(
                                  height: 1.3,
                                  letterSpacing: .5,
                                  color: Colors.white.withOpacity(0.7),
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500)),
                          SizedBox(
                            height: 30.h,
                          ),
                          SizedBox(
                            width: double.infinity,
                            child: TextButtonWidget(
                              buttonText: 'Get Started',
                              ontap: () {},
                              buttonColor: Color(0xff00fe79),
                              textColor: Color(0xff212121),
                            ),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          SizedBox(
                            width: double.infinity,
                            child: TextButtonWidget(
                              buttonText: 'Log In',
                              ontap: () {
                                Navigator.of(context).push(
                                  PageRouteBuilder(
                                    transitionDuration: Duration(seconds: 1),
                                    reverseTransitionDuration:
                                        Duration(seconds: 1),
                                    pageBuilder: (context, animation,
                                        secondaryAnimation) {
                                      final curvedAnimation = CurvedAnimation(
                                        parent: animation,
                                        curve: Interval(0, 0.5),
                                      );

                                      return FadeTransition(
                                        opacity: curvedAnimation,
                                        child: DashBoard(),
                                      );
                                    },
                                  ),
                                );
                              },
                              buttonColor: Colors.white,
                              textColor: Color(0xff212121),
                            ),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Material(
                                        type: MaterialType.transparency,
                                        child: CustomNavigation())));
                              },
                              child: Text(
                                'Become a coach',
                                style: GoogleFonts.raleway(
                                    color: Colors.white, fontSize: 16.h),
                              )),
                          SizedBox(
                            height: 25.h,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ]));
  }
}

class TextButtonWidget extends StatelessWidget {
  final limeColor = Colors.lightGreenAccent;
  final whiteColor = Colors.white;
  final String buttonText;
  final Function ontap;
  final Color buttonColor;
  final Color textColor;

  const TextButtonWidget(
      {Key? key,
      required this.buttonText,
      required this.ontap,
      required this.buttonColor,
      required this.textColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => DashBoard()));
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(buttonColor),
        padding:
            MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 20.h)),
      ),
      child: Text(buttonText,
          style: GoogleFonts.raleway(
              color: textColor, fontSize: 17, fontWeight: FontWeight.w800)),
    );
  }
}


// ScreenUtilInit(
//         designSize: Size(375, 812),
//         builder: () => Column(children: [
//               Stack(
//                 children: [
//                   Container(
//                     child: Image(
//                       image: AssetImage('assets/images/damir.jpg'),
//                     ),
//                   ),
//                 ],
//               )
//             ]));