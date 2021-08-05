import 'package:home/model/Customer_face_model.dart';

import 'hotel_icon_model.dart';

class HotelDetails {
  final String img;
  final String hname;
  final String hprice;
  final List<HotelICons> hotelIcons;
  final List<CustomersFace> customerFace;

  HotelDetails({
    required this.img,
    required this.hname,
    required this.hprice,
    required this.hotelIcons,
    required this.customerFace,
  });
}
