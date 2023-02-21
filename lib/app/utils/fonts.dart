import 'package:donate_life/app/utils/app_sizes.dart';
import 'package:donate_life/app/utils/colors.dart';
import 'package:flutter/material.dart';

class Fonts {
  static const String poppins = 'Poppins';
  static const String timesNewRoman = 'Times New Roman';
}

class FontStyles {
  static const TextStyle timesNewRoman42Primary = TextStyle(
    fontFamily: Fonts.timesNewRoman,
    fontSize: AppSizes.fontSize42,
    color: AppColors.primaryColor,
  );

  static const TextStyle timesNewRoman36Secondary = TextStyle(
    fontFamily: Fonts.timesNewRoman,
    fontSize: AppSizes.fontSize36,
    fontWeight: FontWeight.bold,
    color: AppColors.secondaryColor,
  );
}
