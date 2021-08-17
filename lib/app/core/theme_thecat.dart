import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeTheCat {
  static theme() {
    return ThemeData(
      primaryColor: Color(0xFF6D4BF8),
      primaryColorDark: Color(0xFF4F2ED4),
      textTheme: GoogleFonts.luckiestGuyTextTheme(),
    );
  }
}