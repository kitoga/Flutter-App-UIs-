import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home/Ui/tabBar.dart';
import 'package:home/constant/constant.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: Constant.kPadding,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.menu,
                    size: 40,
                  ),
                  Icon(
                    Icons.notifications,
                    size: 40,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: Constant.kPadding,
              child: Text(
                "What are you \ngoing to book?".toUpperCase(),
                style: GoogleFonts.carterOne(
                  fontSize: 35,
                  color: Color(0xff212121),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: Constant.kPadding,
              child: SearchWidget(),
            ),
            SizedBox(
              height: 15,
            ),
            DefaultTabController(
              length: 3,
              initialIndex: 0,
              child: Expanded(
                child: Column(
                  children: [
                    Material(
                      child: Container(
                        padding: EdgeInsets.only(right: 100, left: 10),
                        color: Colors.white,
                        child: TabBar(
                          labelColor: Colors.black,
                          labelStyle: GoogleFonts.openSans(
                            fontSize: 16,
                          ),
                          indicatorSize: TabBarIndicatorSize.label,
                          indicatorColor: Colors.black,
                          indicatorWeight: 3,
                          unselectedLabelColor: Colors.grey.shade600,
                          tabs: [
                            Tab(text: 'All Class'),
                            Tab(text: 'Exclusive'),
                            Tab(text: 'Standard'),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: TabBarView(children: [
                        TabWidget(),
                        Center(
                          child: Text('data'),
                        ),
                        Center(
                          child: Text('data'),
                        ),
                      ]),
                    )
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

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 30),
      height: 45,
      width: 350,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        color: Colors.white.withOpacity(.8),
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
          Icon(
            Icons.search,
            size: 20,
            color: Colors.grey.shade500,
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            'Search hotel, etc',
            style:
                GoogleFonts.openSans(fontSize: 16, color: Colors.grey.shade500),
          )
        ],
      ),
    );
  }
}
