import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myanmar_sar_kyi_tite/helpers/personal_description.dart';

import '../models/author.dart';
import '../models/book.dart';
import '../models/personal_info.dart';

class Constants {
  static Color primary = const Color(0xFF119527);
  static Color secondary = const Color(0xFF40C955);
  static Color bg_grey = Color.fromARGB(255, 240, 240, 240);
  static Color hint = const Color(0xFF777777);
  static Color normal = const Color(0xFF01420B);
  static Color discription_Color = const Color(0xFF262626);
  static Color accent_bar = const Color(0xFFFFE77A);
  static Color text_white = Colors.white;

  static double bigTitleText = 28.sp;
  static double titleText = 18.sp;
  static double normalText = 14.sp;
  static double smallText = 12.sp;
  static double extraSmallText = 10.sp;

  static List<Author> authors = [
    Author(name: "Min Lu", image: "assets/images/minlu.jpg"),
    Author(name: "Chit Oo Nyo", image: "assets/images/Chit Oo Nyo.png"),
    Author(
        name: "Journal kyaw Ma Ma Lay",
        image: "assets/images/Journal_Kyaw_Ma_Ma_Lay.jpg"),
    Author(name: "Khin Khin Htoo", image: "assets/images/Khin_Khin_Htoo.gif"),
    Author(name: "Mya Than Thint", image: "assets/images/Mya_Than_Tint.jpg"),
    Author(name: "Tawtar Swe", image: "assets/images/TawtarSwe.jpg"),
    Author(
        name: "Thakatho Bone Naing",
        image: "assets/images/thaKathoBoneNaing.png"),
    Author(
        name: "ThaKhin Ko Thaw Hmine",
        image: "assets/images/ThaKhinKoThawHmine.png"),
  ];

  static List<Book> books = [
    Book(name: "Twe", image: "assets/bookimages/Twe.jpg"),
    Book(name: "Linkar DiPa Chit Thu", image: "assets/bookimages/linkar.png"),
    Book(name: "BaWa To To", image: "assets/bookimages/BAWaToto.jpg"),
    Book(name: "Twe", image: "assets/bookimages/Twe.jpg"),
    Book(name: "Linkar DiPa Chit Thu", image: "assets/bookimages/linkar.png"),
    Book(name: "BaWa To To", image: "assets/bookimages/BAWaToto.jpg"),
    Book(name: "Twe", image: "assets/bookimages/Twe.jpg"),
    Book(name: "Linkar DiPa Chit Thu", image: "assets/bookimages/linkar.png"),
    Book(name: "BaWa To To", image: "assets/bookimages/BAWaToto.jpg"),
    Book(name: "Twe", image: "assets/bookimages/Twe.jpg"),
    Book(name: "Linkar DiPa Chit Thu", image: "assets/bookimages/linkar.png"),
    Book(name: "BaWa To To", image: "assets/bookimages/BAWaToto.jpg"),
  ];

  static List<PersonalInfo> personalInfo = [
    PersonalInfo(text: PersonalDescription.MinLu),
    PersonalInfo(text: PersonalDescription.chitOoNyo),
    PersonalInfo(text: PersonalDescription.journalKyawMaMaLay),
    PersonalInfo(text: PersonalDescription.khinkhinHtoo),
    PersonalInfo(text: PersonalDescription.myaThanThint),
    PersonalInfo(text: PersonalDescription.TawtarSwe),
    PersonalInfo(text: PersonalDescription.thaKathoBoneNaing),
    PersonalInfo(text: PersonalDescription.ThaKhinKoThawHmine),
  ];
}
