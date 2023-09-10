import 'dart:math';

import 'package:flutter/material.dart';
import 'package:online_course_app/screens/home/home_screen.dart';
import 'package:online_course_app/screens/profile/profile_screen.dart';
import 'package:online_course_app/screens/settings/settings_screen.dart';
import 'package:online_course_app/screens/shop_courses/shop_course_screen.dart';

const kSecondaryLabelColor = Color(0xFF797F8A);

Color kBackground = const Color(0xFFFCFCFC);
Color kPrimaryLight = const Color(0xFFDFE9E8); //Color(0xFFEDF6F3);
Color kPrimary = const Color(0xFFdaefe8);
Color kFont = const Color(0xFF252435);
Color kFontLight = const Color(0xFFb4b7bf);

const kBackgroundColor = Color(0xFF797F8A); //almond
final kGlassyColor = Colors.white.withOpacity(0.13);
const lightgrey = Color(0XFFEDEDED);
const kJapaneseMaple = Color(0xFFa69ac);
const kTiaMaria = Color(0xFF3C3B3D);
const kCordovon = Color(0xFF8da184); //
const kWewak = Color(0xFF4c72b6); //
const kCrusta = Color(0xFF8a74da); //
const kMojo = Color(0xFFc8db99); //

final colors = [
  const Color(0XFF8094C7),
  const Color(0XFFE3857E),
  const Color(0XFF8E83A6),
];

/* const kBackgroundColor = Color(0xFFEBD4CC); //almond
final kGlassyColor = Colors.white.withOpacity(0.13);
const lightgrey = Color(0XFFEDEDED);
const kIndianRed = Color(0xFFD55C5A);
const kJapaneseMaple = Color(0xFF7E0306);
const kTiaMaria = Color(0xFFD53E0F);
const kCordovon = Color(0xFF894242);
const kWewak = Color(0xFFf59e91);
const kCrusta = Color(0xFFfa8743);
const kMojo = Color(0xFFc55241);
const kRoofTerracotta = Color(0xFFa72f1d); */

const primary = Color(0xFFf77080);
const secondary = Color(0xFFe96561);

const mainColor = Color(0xFF000000);
const darker = Color(0xFF3E4249);
const cardColor = Colors.white;
const appBgColor = Color(0xFFF7F7F7);
const appBarColor = Color(0xFFF7F7F7);
const bottomBarColor = Colors.white;
const inActiveColor = Colors.grey;
const shadowColor = Colors.black87;
const textBoxColor = Colors.white;
//const textColor = Color(0xFF333333);
const glassTextColor = Colors.white;
const labelColor = Color(0xFF8A8989);
const glassLabelColor = Colors.white;
const actionColor = Color(0xFFe54140);

const yellow = Color(0xFFffcb66);
const green = Color(0xFFa2e1a6);
const pink = Color(0xFFf5bde8);
const purple = Color(0xFFcdacf9);
const red = Color(0xFFf77080);
const orange = Color(0xFFf5ba92);
const sky = Color(0xFFABDEE6);
const blue = Color(0xFF509BE4);

const textColor = Color(0XFFf8f5e3);

const bigText = TextStyle(
  color: textColor,
  fontFamily: 'SFNFDisplay',
  fontSize: 22.0,
);
const description = TextStyle(
  color: textColor,
  fontFamily: 'SFNFDisplay',
  fontSize: 12.0,
);

const mediumText = TextStyle(
  color: textColor,
  fontFamily: 'SFNFDisplay',
  fontSize: 18.0,
);

const smallText = TextStyle(
  color: textColor,
  fontFamily: 'SFNFDisplay',
  fontSize: 14.0,
);

final screens = [
  HomePage(),
  const ShopCoursesScreen(),
  const ProfileScreen(),
  //const BlogsScreen(),
  const SettingsScreen()
];

Set set = {};
var rand = Random();

getColor() {
  if (set.containsAll({0, 1, 2})) {
    set.removeAll({0, 1, 2});
    set.add(0);
    return colors[0];
  } else {
    if (!set.contains(0)) {
      set.add(0);
      return colors[0];
    } else if (!set.contains(1)) {
      set.add(1);
      return colors[1];
    } else if (!set.contains(2)) {
      set.add(2);
      return colors[2];
    }
  }
}
