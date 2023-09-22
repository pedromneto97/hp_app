import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class TextStyles {
  static final regularText16 = GoogleFonts.openSans(
    fontWeight: FontWeight.w400,
    fontSize: 16,
  );

  static final boldText14 = GoogleFonts.openSans(
    fontWeight: FontWeight.bold,
    fontSize: 14,
    height: 1.42857,
  );

  static final regularText14 = GoogleFonts.openSans(
    fontWeight: FontWeight.w400,
    fontSize: 14,
    height: 1.42857,
  );

  static final regularText12 = GoogleFonts.openSans(
    fontWeight: FontWeight.w400,
    fontSize: 12,
    height: 1.5,
  );

  static final boldButtonText = GoogleFonts.openSans(
    fontWeight: FontWeight.w600,
    fontSize: 14,
    height: 1,
  );

  static final title = GoogleFonts.jollyLodger(
    fontWeight: FontWeight.w400,
    fontSize: 32,
    height: 1.0625,
  );

  static final letterText = GoogleFonts.jollyLodger(
    fontWeight: FontWeight.w400,
    fontSize: 116,
    height: 1.75,
  );

  static final subtitle = GoogleFonts.jollyLodger(
    fontWeight: FontWeight.w400,
    fontSize: 18,
    height: 1.11111,
  );
}
