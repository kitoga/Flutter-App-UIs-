import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DataNavPage extends StatelessWidget {
  const DataNavPage({Key? key}) : super(key: key);

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
