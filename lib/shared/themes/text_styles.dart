import 'package:flutter/material.dart';
import 'package:flutter_cripto_coins/shared/themes/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class TextStyles {
  static final titleAppBar = GoogleFonts.barlow(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    color: AppColors.white,
  );
  static final whiteTitle = GoogleFonts.barlow(
    fontSize: 20,
    fontWeight: FontWeight.w400,
    color: AppColors.white,
  );
  static final fontRegular = GoogleFonts.barlow(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.black,
  );
  static final fontLight = GoogleFonts.barlow(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.black,
  );
  static final whiteSmallText = GoogleFonts.barlow(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: AppColors.white,
  );
}
