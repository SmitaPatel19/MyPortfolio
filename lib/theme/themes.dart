import 'package:flutter/material.dart';

import 'app_theme.dart';

final lightTheme = ThemeData(
  brightness: Brightness.light,
  extensions: [
    AppColors(
      backgroundColor: Color(0xFFF0F5FF),
      sideIconColor: Color(0xff0A192F),
      sideLineColor: Color(0xff0A192F),
      highliteTextColor: Color(0xff8C1946),
      techIconColor: Color(0xff8C1946),
      techtextColor: Color(0xff2B2B2B),
      sectionheadingNumColor: Color(0xff960016),
      sectionheadingColor: Color(0xff0A192F),
      sectionheadinglineColor: Color(0x880A192F),
      smalltextColor:  Color(0xff2B2B2B),
      whiteColor: Colors.black,
      brownColor: Colors.white,
      redColor: Color(0x88660F09),
      deepOrangeColor: Color(0xFFAD7A32),
      deepPurpleColor: Colors.deepPurple,
      projectDecContColor: Color(0xffABBEED),
    ),
  ],
);

final darkTheme = ThemeData(
  brightness: Brightness.dark,
  extensions: [
    AppColors(
      backgroundColor: const Color(0xff0A192F),
      sideIconColor: const Color(0xffffa8b2d1),
      sideLineColor: Colors.grey,
      highliteTextColor: const Color(0xff41FBDA),
      techIconColor: const Color(0xff64FFDA),
      techtextColor: const Color(0xff717C99),
      sectionheadingNumColor: const Color(0xff61F9D5),
      sectionheadingColor: const Color(0xffCCD6F6),
      sectionheadinglineColor: const Color(0xff303C55),
      smalltextColor: const Color(0xff828DAA),
      whiteColor: Colors.white,
      brownColor: Colors.brown,
      redColor: Colors.red,
      deepOrangeColor: Colors.deepOrange,
      deepPurpleColor: Colors.deepPurple,
      projectDecContColor: const Color(0xff172A45),
    ),
  ],
);
