import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Calendar extends StatefulWidget {
  Calendar({Key? key}) : super(key: key);

  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'data',
        style: GoogleFonts.raleway(fontSize: 20, color: Colors.amber),
      ),
    );
  }
}
