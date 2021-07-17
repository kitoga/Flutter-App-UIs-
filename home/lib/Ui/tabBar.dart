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
              spreadRadius: 5,
              blurRadius: 8,
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
