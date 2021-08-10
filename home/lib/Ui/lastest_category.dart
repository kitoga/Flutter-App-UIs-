import 'package:flutter/material.dart';
// import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home/services/hotel_service_copy.dart';
// import 'package:home/model/model.dart';
// import 'package:home/services/hotel_service.dart';

class LatestCatogories extends StatefulWidget {
  const LatestCatogories({
    Key? key,
  }) : super(key: key);

  @override
  _LatestCatogoriesState createState() => _LatestCatogoriesState();
}

class _LatestCatogoriesState extends State<LatestCatogories> {
  // HotelService get service => GetIt.I<HotelService>();
  // List<HotelDetails> hotel = [];

  // @override
  // void initState() {
  //   hotel = service.getHotelDetails();
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Container(
        height: MediaQuery.of(context).size.height / 3.3,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: getAllHotelDetail.length,
          itemBuilder: (BuildContext context, int index) {
            final hotel = getAllHotelDetail[index];
            return Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 5, 10, 10),
                  child: Container(
                    height: MediaQuery.of(context).size.height / 3.5,
                    width: MediaQuery.of(context).size.width / 2.6,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade200,
                          spreadRadius: 3.0,
                          blurRadius: 5,
                          offset: Offset(0, 2), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Container(
                              height: MediaQuery.of(context).size.height / 5.2,
                              width: MediaQuery.of(context).size.width / 2.9,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(hotel.img),
                                    fit: BoxFit.fill),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(20, 10, 0, 10),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 30,
                                      width: 70,
                                      decoration: BoxDecoration(
                                          color: Color(0xff212121),
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                      child: Center(
                                        child: Text(
                                          "Standard",
                                          style: GoogleFonts.openSans(
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xffffffff),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 25,
                                      width: 45,
                                      decoration: BoxDecoration(
                                          color: Color(0xffffffff),
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.star,
                                            size: 20,
                                            color: Colors.yellow[400],
                                          ),
                                          Text(
                                            "4.5",
                                            style: GoogleFonts.openSans(
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black45,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            hotel.hname,
                            style: GoogleFonts.openSans(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                hotel.hprice,
                                style: GoogleFonts.openSans(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff212121),
                                ),
                              ),
                              Text(
                                '/Night',
                                style: GoogleFonts.openSans(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                  color: Color(0xff212121),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
