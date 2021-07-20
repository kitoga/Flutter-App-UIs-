import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TabWidget extends StatelessWidget {
  const TabWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ContinerWidget(),
                  ContinerWidget(),
                  ContinerWidget(),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Text(
                'Latest Popular',
                style: GoogleFonts.openSans(
                  fontSize: 18,
                  color: Colors.grey.shade700,
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Row(
                  children: [
                    LastestCategoriesWidget(),
                    LastestCategoriesWidget(),
                    LastestCategoriesWidget(),
                    LastestCategoriesWidget(),
                    LastestCategoriesWidget(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class LastestCategoriesWidget extends StatelessWidget {
  const LastestCategoriesWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, bottom: 10, top: 10),
      child: Container(
        height: MediaQuery.of(context).size.height / 3.6,
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
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: Container(
                height: MediaQuery.of(context).size.height / 5.2,
                width: MediaQuery.of(context).size.width / 2.9,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 0, 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 30,
                        width: 70,
                        decoration: BoxDecoration(
                            color: Color(0xff212121),
                            borderRadius: BorderRadius.circular(15)),
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
                            borderRadius: BorderRadius.circular(15)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
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
              "Beach Hotel California",
              style: GoogleFonts.openSans(
                fontSize: 11.5,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Row(
                children: [
                  Text(
                    "\$170",
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
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ContinerWidget extends StatelessWidget {
  const ContinerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(30, 20, 10, 10),
      child: Container(
        height: MediaQuery.of(context).size.height / 5.5,
        width: MediaQuery.of(context).size.width / 1.3,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade200,
              spreadRadius: 0,
              blurRadius: 10,
              offset: Offset(0, 5), // changes position of shadow
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 5.5,
              width: MediaQuery.of(context).size.width / 3.5,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20)),
                  color: Colors.limeAccent,
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://pix8.agoda.net/hotelImages/124/1246280/1246280_16061017110043391702.jpg?s=1024x768"),
                    fit: BoxFit.cover,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 15, 0, 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Beach Hotel California',
                    style: GoogleFonts.raleway(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff212121)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: IconWidgets(),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Container(
                        height: 28,
                        width: 85,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Text(
                            "Exclusive",
                            style: GoogleFonts.openSans(
                                fontSize: 12.5,
                                fontWeight: FontWeight.w500,
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
                        "\$170",
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
                      SizedBox(
                        width: 55,
                      ),
                      Icon(Icons.bookmark_outline)
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class IconWidgets extends StatelessWidget {
  const IconWidgets({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.star,
          color: Colors.yellow[600],
          size: 17,
        ),
        Icon(
          Icons.star,
          color: Colors.yellow[600],
          size: 17,
        ),
        Icon(
          Icons.star,
          color: Colors.yellow[600],
          size: 17,
        ),
        Icon(
          Icons.star,
          color: Colors.yellow[600],
          size: 17,
        ),
        Icon(
          Icons.star,
          color: Colors.grey[300],
          size: 17,
        ),
        Text(
          '4.5',
          style: GoogleFonts.raleway(
              fontSize: 14,
              color: Colors.grey[500],
              fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}
