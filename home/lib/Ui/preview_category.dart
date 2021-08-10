import 'package:flutter/material.dart';
// import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home/Ui/tabBar.dart';
// import 'package:home/model/model.dart';
import 'package:home/screens/detial.dart';
// import 'package:home/services/hotel_service.dart';
import 'package:home/services/hotel_service_copy.dart';

class PreviewCategory extends StatefulWidget {
  const PreviewCategory({
    Key? key,
  }) : super(key: key);

  @override
  _PreviewCategoryState createState() => _PreviewCategoryState();
}

class _PreviewCategoryState extends State<PreviewCategory> {
  // HotelService get service => GetIt.I<HotelService>();
  // List<HotelDetails> hotel = [];

  // @override
  // void initState() {
  //   hotel = service.getHotelDetails();
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: MediaQuery.of(context).size.width,
      color: Colors.transparent,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: getAllHotelDetail.length,
        itemBuilder: (BuildContext context, int index) {
          final hotel = getAllHotelDetail[index];
          return Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    PageRouteBuilder(
                      transitionDuration: Duration(seconds: 1),
                      reverseTransitionDuration: Duration(seconds: 1),
                      pageBuilder: (context, animation, secondaryAnimation) {
                        final curvedAnimation = CurvedAnimation(
                          parent: animation,
                          curve: Interval(0, 0.5),
                        );

                        return FadeTransition(
                          opacity: curvedAnimation,
                          child: DetailPage(
                            hotels: hotel,
                          ),
                        );
                      },
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(30, 15, 10, 10),
                  child: Container(
                    height: MediaQuery.of(context).size.height / 6,
                    width: MediaQuery.of(context).size.width / 1.5,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade200,
                          spreadRadius: 0,
                          blurRadius: 10,
                          offset: Offset(0, 4), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Container(
                            height: MediaQuery.of(context).size.height / 5.5,
                            width: MediaQuery.of(context).size.width / 3.5,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    bottomLeft: Radius.circular(20)),
                                color: Colors.limeAccent,
                                image: DecorationImage(
                                    image: NetworkImage(hotel.img),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 15, 0, 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                hotel.hname,
                                style: GoogleFonts.raleway(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xff212121)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5.0),
                                child: IconWidgets(),
                              ),
                              Padding(
                                  padding: const EdgeInsets.only(top: 10.0),
                                  child: Container(
                                    height: 16,
                                    width: 55,
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Exclusive",
                                        style: GoogleFonts.openSans(
                                            fontSize: 8,
                                            fontWeight: FontWeight.w200,
                                            color: Colors.white),
                                      ),
                                    ),
                                  )),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "${hotel.hprice}",
                                    style: GoogleFonts.openSans(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff212121),
                                    ),
                                  ),
                                  Text(
                                    '/Night',
                                    style: GoogleFonts.openSans(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w300,
                                      color: Color(0xff212121),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 32,
                                  ),
                                  Icon(Icons.bookmark_outline)
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
