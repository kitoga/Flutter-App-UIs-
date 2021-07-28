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
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PreviewCategory(),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 0, 10, 20),
            child: Text('Latest Popular',
                style: GoogleFonts.openSans(
                  fontSize: 20,
                  color: Color(0xff212121),
                )),
          ),
          LatestCatogories()
        ],
      ),
    );
  }
}

class IconWidgets extends StatefulWidget {
  const IconWidgets({
    Key? key,
  }) : super(key: key);

  @override
  _IconWidgetsState createState() => _IconWidgetsState();
}

class _IconWidgetsState extends State<IconWidgets> {
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
