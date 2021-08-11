import 'package:flutter/material.dart';
import 'package:workout_plan/pages/calendar.dart';
import 'package:workout_plan/pages/dashboard.dart';
import 'package:workout_plan/pages/datas.dart';
import 'package:workout_plan/pages/profile.dart';

class CustomNavigation extends StatefulWidget {
  CustomNavigation({Key? key}) : super(key: key);

  @override
  _CustomNavigationState createState() => _CustomNavigationState();
}

class _CustomNavigationState extends State<CustomNavigation> {
  int _selectedItem = 0;

  List<Widget> _pages = [
    DashBoard(),
    DataPage(),
    Calendar(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        bottomNavigationBar: CustomBottomNavigationBar(
          iconList: [
            Icons.home,
            Icons.auto_graph_outlined,
            Icons.event,
            Icons.person_rounded,
          ],
          onChange: (val) {
            setState(() {
              _selectedItem = val;
            });
          },
          defaultSelectedIndex: 0,
        ),
        body: Container(
          child: _pages[_selectedItem],
        ));
  }
}

class CustomBottomNavigationBar extends StatefulWidget {
  final int defaultSelectedIndex;
  final Function(int) onChange;
  final List<IconData> iconList;

  CustomBottomNavigationBar(
      {this.defaultSelectedIndex = 0,
      required this.iconList,
      required this.onChange});

  @override
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _selectedIndex = 0;
  List<IconData> _iconList = [];

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();

    _selectedIndex = widget.defaultSelectedIndex;
    _iconList = widget.iconList;
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _navBarItemList = [];

    for (var i = 0; i < _iconList.length; i++) {
      _navBarItemList.add(buildNavBarItem(_iconList[i], i));
    }

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: _navBarItemList,
    );
  }

  Widget buildNavBarItem(IconData icon, int index) {
    return Container(
      height: 55,
      width: MediaQuery.of(context).size.width / 5,
      // color: Colors.white,
      child: GestureDetector(
        onTap: () {
          widget.onChange(index);
          setState(() {
            _selectedIndex = index;
          });
        },
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 7, vertical: 12),
          height: 55,
          width: MediaQuery.of(context).size.width / _iconList.length,
          decoration: BoxDecoration(
            // border: Border(
            //   bottom: BorderSide(width: 4, color: Colors.orange),
            // ),
            borderRadius: BorderRadius.circular(20),
            // color: index == _selectedIndex
            //     ? Color(0xffDFCAC8)
            //     : Colors.transparent,
          ),
          child: Icon(
            icon,
            size: 25,
            color:
                index == _selectedIndex ? Color(0xff00fe79) : Color(0xff848b94),
          ),
        ),
      ),
    );
  }
}
