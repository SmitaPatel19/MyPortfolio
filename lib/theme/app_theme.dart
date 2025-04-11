import 'package:flutter/material.dart';

@immutable
class AppColors extends ThemeExtension<AppColors> {
  final Color backgroundColor;
  final Color sideIconColor;
  final Color sideLineColor;
  final Color highliteTextColor;
  final Color techIconColor;
  final Color techtextColor;
  final Color sectionheadingNumColor;
  final Color sectionheadingColor;
  final Color sectionheadinglineColor;
  final Color smalltextColor;
  final Color whiteColor;
  final Color brownColor;
  final Color redColor;
  final Color deepOrangeColor;
  final Color deepPurpleColor;
  final Color projectDecContColor;

  const AppColors({
    required this.backgroundColor,
    required this.sideIconColor,
    required this.sideLineColor,
    required this.highliteTextColor,
    required this.techIconColor,
    required this.techtextColor,
    required this.sectionheadingNumColor,
    required this.sectionheadingColor,
    required this.sectionheadinglineColor,
    required this.smalltextColor,
    required this.whiteColor,
    required this.brownColor,
    required this.redColor,
    required this.deepOrangeColor,
    required this.deepPurpleColor,
    required this.projectDecContColor,
  });

  @override
  AppColors copyWith({
    Color? backgroundColor,
    Color? sideIconColor,
    Color? sideLineColor,
    Color? highliteTextColor,
    Color? techIconColor,
    Color? techtextColor,
    Color? sectionheadingNumColor,
    Color? sectionheadingColor,
    Color? sectionheadinglineColor,
    Color? smalltextColor,
    Color? whiteColor,
    Color? brownColor,
    Color? redColor,
    Color? deepOrangeColor,
    Color? deepPurpleColor,
    Color? projectDecContColor,
  }) {
    return AppColors(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      sideIconColor: sideIconColor ?? this.sideIconColor,
      sideLineColor: sideLineColor ?? this.sideLineColor,
      highliteTextColor: highliteTextColor ?? this.highliteTextColor,
      techIconColor: techIconColor ?? this.techIconColor,
      techtextColor: techtextColor ?? this.techtextColor,
      sectionheadingNumColor: sectionheadingNumColor ?? this.sectionheadingNumColor,
      sectionheadingColor: sectionheadingColor ?? this.sectionheadingColor,
      sectionheadinglineColor: sectionheadinglineColor ?? this.sectionheadinglineColor,
      smalltextColor: smalltextColor ?? this.smalltextColor,
      whiteColor: whiteColor ?? this.whiteColor,
      brownColor: brownColor ?? this.brownColor,
      redColor: redColor ?? this.redColor,
      deepOrangeColor: deepOrangeColor ?? this.deepOrangeColor,
      deepPurpleColor: deepPurpleColor ?? this.deepPurpleColor,
      projectDecContColor: projectDecContColor ?? this.projectDecContColor,
    );
  }

  @override
  AppColors lerp(ThemeExtension<AppColors>? other, double t) => this;
}
