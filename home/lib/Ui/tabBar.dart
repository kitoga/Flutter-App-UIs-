import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home/Ui/lastest_category.dart';
import 'package:home/Ui/preview_category.dart';

class TabWidget extends StatefulWidget {
  TabWidget({Key? key}) : super(key: key);

  @override
  _TabWidgetState createState() => _TabWidgetState();
}

class _TabWidgetState extends State<TabWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PreviewCategory(),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0, bottom: 10),
            child: Text('Latest Popular',
                style: GoogleFonts.openSans(
                    fontSize: 18, color: Color(0xff212121))),
          ),
          LatestCatogories(),
        ],
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
          size: 12,
        ),
        Icon(
          Icons.star,
          color: Colors.yellow[600],
          size: 12,
        ),
        Icon(
          Icons.star,
          color: Colors.yellow[600],
          size: 12,
        ),
        Icon(
          Icons.star,
          color: Colors.yellow[600],
          size: 12,
        ),
        Icon(
          Icons.star,
          color: Colors.grey[300],
          size: 12,
        ),
        Text(
          '4.5',
          style: GoogleFonts.raleway(
              fontSize: 10,
              color: Colors.grey[500],
              fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}
