import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home/Ui/tabBar.dart';
import 'package:home/model/Customer_face_model.dart';
import 'package:home/model/hotel_icon_model.dart';
import 'package:home/model/model.dart';
import 'package:home/services/customersface.dart';
import 'package:home/services/hotel_icons.dart';
import 'package:home/services/hotel_service.dart';

class DetailPage extends StatelessWidget {
  final HotelDetails hotels;

  const DetailPage({Key? key, required this.hotels}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Details',
          style: GoogleFonts.openSans(color: Color(0xff212121)),
        ),
        centerTitle: true,
        leading: IconButton(
            onPressed: Navigator.of(context).pop,
            icon: Icon(
              Icons.arrow_back,
              color: Color(0xff212121),
            )),
        actions: [
          IconButton(
              icon: Icon(
                Icons.bookmark_add_outlined,
                color: Color(0xff212121),
              ),
              onPressed: () {}),
          SizedBox(width: 10),
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: MediaQuery.of(context).size.height / 3.5,
                width: MediaQuery.of(context).size.width,
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
                child: Stack(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height / 3.5,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
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
                      child: ClipRRect(
                        //ClipRRect to add some borderRadius around the continer
                        borderRadius: BorderRadius.circular(20),
                        child: Image(
                          image: NetworkImage(hotels.img),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 170,
                      left: 30,
                      child: Container(
                        height: 36,
                        width: 85,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Text(
                            "Exclusive",
                            style: GoogleFonts.openSans(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 20.0,
                  right: 20.0,
                ),
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 30.0),
                                child: Text(
                                  'Beach Hotel California',
                                  style: GoogleFonts.openSans(
                                    color: Color(0xff212121),
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 25.0),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.location_on_outlined,
                                      color: Color(0xff212121).withOpacity(0.3),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      'Celina Delaware 10299',
                                      style: GoogleFonts.openSans(
                                        color:
                                            Color(0xff212121).withOpacity(0.3),
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          hotelInformation(),
                          HotelIconsDetails(),
                          BookButtonWidget(),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class BookButtonWidget extends StatelessWidget {
  const BookButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 360,
      left: 185,
      child: TextButton(
        child: Container(
          height: MediaQuery.of(context).size.height / 16,
          width: MediaQuery.of(context).size.width / 2.5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: Colors.black87,
          ),
          child: Center(
            child: Text(
              'Book Now',
              style: GoogleFonts.openSans(
                fontWeight: FontWeight.w400,
                color: Colors.white70,
              ),
            ),
          ),
        ),
        onPressed:
            () {}, // here will be for the booking room, you can add your own backend to recieve function from here...!!!
      ),
    );
  }
}

class HotelIconsDetails extends StatelessWidget {
  const HotelIconsDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 284,
      child: Container(
        height: MediaQuery.of(context).size.height / 1.88,
        width: MediaQuery.of(context).size.width / 4,
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.grey.shade300, width: 5),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(60),
                topRight: Radius.circular(60),
                bottomRight: Radius.circular(30))),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 25.0),
              child: Text(
                '\$170',
                style: GoogleFonts.openSans(
                  color: Color(0xff212121),
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              '/night',
              style: GoogleFonts.openSans(
                color: Color(0xff212121).withOpacity(0.3),
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
            Expanded(
              child: Container(
                child: ListView.builder(
                  itemCount: hotelIcons.length,
                  itemBuilder: (BuildContext context, index) {
                    return IconList(
                      icons: hotelIcons[index],
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class IconList extends StatelessWidget {
  final HotelICons icons;

  const IconList({Key? key, required this.icons}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: CircleAvatar(
        radius: 18.0,
        backgroundColor: Colors.grey.shade300,
        child: icons.icons,
        foregroundColor: Colors.black,
      ),
    );
  }
}

class hotelInformation extends StatelessWidget {
  const hotelInformation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 80),
      child: Container(
        height: MediaQuery.of(context).size.height / 2.3,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(30)),
        child: Padding(
          padding: const EdgeInsets.only(top: 10.0, left: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Information',
                style: GoogleFonts.openSans(
                  color: Color(0xff212121).withOpacity(0.8),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    style: GoogleFonts.openSans(
                      color: Color(0xff212121).withOpacity(0.6),
                      fontSize: 12,
                      height: 2.0,
                      fontWeight: FontWeight.w500,
                    ),
                    text:
                        "This hotel has many facilities and is\nequipped with various views such as\nsunset   "),
                TextSpan(
                  style: GoogleFonts.openSans(
                    color: Colors.blue,
                    fontSize: 14,
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.bold,
                  ),
                  text: "Click here",
                ),
              ])),
              CustomerFaceSection(),
              IconWidgetDetail(),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    style: GoogleFonts.openSans(
                      color: Color(0xff212121),
                      fontSize: 24,
                      height: 2.0,
                      fontWeight: FontWeight.bold,
                    ),
                    text: "\$340"),
                TextSpan(
                  style: GoogleFonts.openSans(
                    color: Color(0xff212121).withOpacity(0.3),
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                  text: "/Night",
                ),
              ])),
              SizedBox(height: 5),
              Text(
                'Guest',
                style: GoogleFonts.openSans(
                  color: Color(0xff212121).withOpacity(0.8),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: MediaQuery.of(context).size.height / 16,
                width: MediaQuery.of(context).size.width / 3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                        icon: Icon(
                          Icons.remove,
                          color: Color(0xff212121),
                        ),
                        onPressed: () {}),
                    // SizedBox(
                    //   width: 5,
                    // ),
                    Text(
                      '5',
                      style: GoogleFonts.openSans(
                        color: Color(0xff212121).withOpacity(0.8),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
                        icon: Icon(
                          Icons.add,
                          color: Color(0xff212121),
                        ),
                        onPressed: () {}),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomerFaceSection extends StatelessWidget {
  const CustomerFaceSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: customerFaceData.length,
          itemBuilder: (BuildContext context, int index) {
            return CustomerFaceWidget(customerFace: customerFaceData[index]);
          },
        ),
      ),
    );
  }
}

class CustomerFaceWidget extends StatelessWidget {
  const CustomerFaceWidget({
    Key? key,
    required this.customerFace,
  }) : super(key: key);
  final CustomersFace customerFace;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey.shade400,
              border: Border.all(color: Colors.grey.shade600, width: 2),
              image:
                  DecorationImage(image: NetworkImage(customerFace.CusFace))),
        )
      ],
    );
  }
}

class IconWidgetDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.star,
          color: Colors.yellow[600],
          size: 16,
        ),
        Icon(
          Icons.star,
          color: Colors.yellow[600],
          size: 16,
        ),
        Icon(
          Icons.star,
          color: Colors.yellow[600],
          size: 16,
        ),
        Icon(
          Icons.star,
          color: Colors.yellow[600],
          size: 16,
        ),
        Icon(
          Icons.star,
          color: Colors.grey[400],
          size: 16,
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          '32 Reviews',
          style: GoogleFonts.raleway(
              fontSize: 14,
              color: Color(0xff212121).withOpacity(0.3),
              fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}
