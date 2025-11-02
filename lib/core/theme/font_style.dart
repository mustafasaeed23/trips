import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

abstract class FontsStyle {
  static TextStyle style10Blue = GoogleFonts.poppins(
    fontSize: 10,
    color: AppColors.mainColor,
    fontWeight: FontWeight.w500,
  );
  static TextStyle style25Blue = GoogleFonts.poppins(
    fontSize: 25,
    color: AppColors.mainColor,
    fontWeight: FontWeight.w700,
  );
  static TextStyle style12grey = GoogleFonts.poppins(
    fontSize: 12,
    color: Colors.grey,
    fontWeight: FontWeight.w500,
  );
   static TextStyle style14Black = GoogleFonts.poppins(
    fontSize: 14,
    color: Colors.black,
    fontWeight: FontWeight.w500,
  );
  static TextStyle style12white = GoogleFonts.poppins(
    fontSize: 12,
    color: Colors.white,
    fontWeight: FontWeight.w500,
  );
  static TextStyle style18black = GoogleFonts.poppins(
    fontSize: 18,
    color: Colors.black,
    fontWeight: FontWeight.bold,
  );
  static TextStyle style18SemiBoldBlack = GoogleFonts.poppins(
    fontSize: 18,
    color: Colors.black,
    fontWeight: FontWeight.w600,
  );
}
