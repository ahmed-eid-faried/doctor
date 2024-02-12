import 'dart:ui';

import 'package:doctor/core/constant/color.dart';
import 'package:doctor/core/constant/color.dart';
import 'package:doctor/core/core/utils/constants_manager.dart';
import 'package:doctor/core/core/utils/extensions/landscape.dart';

import 'font_manager.dart';

class AppFontStyle {
  static _getTextStyle(double fontSize, FontWeight fontWeight, Color color,
      {List<FontFeature>? fontFeatures,
      TextDecoration? textDecoration,
      Color? decorationColor}) {
    return TextStyle(
        color: color,
        fontSize: AppConstants.language
            ? (fontSize * 1.4).landscapeFontSp()
            : fontSize.landscapeFontSp(),
        fontFamily: AppConstants.language ? 'Somar' : 'Montserrat',
        fontWeight: fontWeight,
        fontFeatures: fontFeatures ?? [],
        decoration: textDecoration,
        decorationColor: decorationColor);
  }

//****************************************************************// English Font Style \\***********************************************\\

// regular style

  static getRegularStyle(
      {double fontSize = FontSize.s12, required Color color}) {
    return _getTextStyle(fontSize, FontWeightManager.regular, color);
  }

  static getRegularSMCPStyle(
      {double fontSize = FontSize.s12, required Color color}) {
    return _getTextStyle(fontSize, FontWeightManager.regular, color,
        fontFeatures: const [FontFeature.enable('smcp')]);
  }

  static getRegularUnderLineStyle(
      {double fontSize = FontSize.s12, required Color color}) {
    return _getTextStyle(
      fontSize,
      FontWeightManager.regular,
      color,
      textDecoration: TextDecoration.underline,
      decorationColor: color,
    );
  }

  static getRegularLineThroughStyle(
      {double fontSize = FontSize.s12, required Color color}) {
    return _getTextStyle(
      fontSize,
      FontWeightManager.regular,
      color,
      textDecoration: TextDecoration.lineThrough,
      decorationColor: color,
    );
  }

//-------------------------------------------------------------------------------------------------------------------------------------------\\

  static grey12w400() {
    return getRegularStyle(color: AppColor.grey);
  }

  static grey12w400smcp() {
    return getRegularSMCPStyle(fontSize: FontSize.s11, color: AppColor.grey);
  }

  static lightGrey12w400() {
    return getRegularStyle(color: AppColor.lightGrey);
  }

  static grey11w400() {
    return getRegularStyle(fontSize: FontSize.s11, color: AppColor.grey);
  }

  static orange11w400() {
    return getRegularStyle(fontSize: FontSize.s11, color: AppColor.orange);
  }

  static green11w400() {
    return getRegularStyle(fontSize: FontSize.s11, color: AppColor.green);
  }

  static grey14w400() {
    return getRegularStyle(fontSize: FontSize.s14, color: AppColor.grey);
  }

  static black12w400() {
    return getRegularStyle(color: AppColor.black);
  }

  static darkBlue14w400() {
    return getRegularStyle(fontSize: FontSize.s14, color: AppColor.darkBlue);
  }

  static darkBlue20w400() {
    return getRegularStyle(fontSize: FontSize.s20, color: AppColor.darkBlue);
  }

  static black14w400() {
    return getRegularStyle(fontSize: FontSize.s14, color: AppColor.black);
  }

  static black10w400() {
    return getRegularStyle(fontSize: FontSize.s10 * 0.9, color: AppColor.black);
  }

  static black11w400() {
    return getRegularStyle(fontSize: FontSize.s11, color: AppColor.black);
  }

  static grey411w400() {
    return getRegularStyle(fontSize: FontSize.s11, color: AppColor.grey4);
  }

  static black16w400() {
    return getRegularStyle(fontSize: FontSize.s16, color: AppColor.black);
  }

  static white11w400() {
    return getRegularStyle(fontSize: FontSize.s11, color: AppColor.white);
  }

  static white12w400() {
    return getRegularStyle(fontSize: FontSize.s12, color: AppColor.white);
  }

  static white14w400() {
    return getRegularStyle(fontSize: FontSize.s14, color: AppColor.white);
  }

  static red11w400() {
    return getRegularStyle(fontSize: FontSize.s11, color: AppColor.red);
  }

  static red12w400() {
    return getRegularStyle(fontSize: FontSize.s12, color: AppColor.red);
  }

  static green12w400() {
    return getRegularStyle(fontSize: FontSize.s12, color: AppColor.green);
  }

  static black12w400smcp() {
    return getRegularSMCPStyle(color: AppColor.black);
  }

  static black14w400smcp() {
    return getRegularSMCPStyle(fontSize: FontSize.s14, color: AppColor.black);
  }

  static black16w400smcp() {
    return getRegularSMCPStyle(fontSize: FontSize.s16, color: AppColor.black);
  }

  static white14w400smcp() {
    return getRegularSMCPStyle(fontSize: FontSize.s14, color: AppColor.white);
  }

  static white22w400smcp() {
    return getRegularSMCPStyle(fontSize: FontSize.s22, color: AppColor.white);
  }

  static white14w400underline() {
    return getRegularUnderLineStyle(
        fontSize: FontSize.s14, color: AppColor.white);
  }

  static red12w400underline() {
    return getRegularUnderLineStyle(
        fontSize: FontSize.s12, color: AppColor.red);
  }

  static grey11w400lineThrough() {
    return getRegularLineThroughStyle(
        fontSize: FontSize.s11, color: AppColor.grey);
  }

// medium style

  static getMediumStyle(
      {double fontSize = FontSize.s12, required Color color}) {
    return _getTextStyle(fontSize, FontWeightManager.medium, color);
  }

  static getMediumSMCPStyle(
      {double fontSize = FontSize.s12, required Color color}) {
    return _getTextStyle(fontSize, FontWeightManager.medium, color,
        fontFeatures: const [FontFeature.enable('smcp')]);
  }

  static getMediumUnderLineStyle(
      {double fontSize = FontSize.s12, required Color color}) {
    return _getTextStyle(
      fontSize,
      FontWeightManager.medium,
      color,
      textDecoration: TextDecoration.underline,
      decorationColor: color,
    );
  }
//-------------------------------------------------------------------------------------------------------------------------------------------\\

  static grey14w500() {
    return getMediumStyle(fontSize: FontSize.s14, color: AppColor.grey);
  }

  static black12w500() {
    return getMediumStyle(fontSize: FontSize.s12, color: AppColor.black);
  }

  static black11w500() {
    return getMediumStyle(fontSize: FontSize.s11, color: AppColor.black);
  }

  static black14w500() {
    return getMediumStyle(fontSize: FontSize.s14, color: AppColor.black);
  }

  static black16w500() {
    return getMediumStyle(fontSize: FontSize.s16, color: AppColor.black);
  }

  static jet18w500() {
    return getMediumStyle(fontSize: FontSize.s18, color: AppColor.jet);
  }

  static white14w500() {
    return getMediumStyle(fontSize: FontSize.s14, color: AppColor.white);
  }

  static green12w500() {
    return getMediumStyle(fontSize: FontSize.s12, color: AppColor.green);
  }

  static red12w500() {
    return getMediumStyle(fontSize: FontSize.s12, color: AppColor.red);
  }

  static black14w500smcp() {
    return getMediumSMCPStyle(fontSize: FontSize.s14, color: AppColor.black);
  }

  static white14w500smcp() {
    return getMediumSMCPStyle(fontSize: FontSize.s14, color: AppColor.white);
  }

  static red12w500underline() {
    return getMediumUnderLineStyle(fontSize: FontSize.s14, color: AppColor.red);
  }

// bold style

  static getBoldStyle({double fontSize = FontSize.s12, required Color color}) {
    return _getTextStyle(fontSize, FontWeightManager.bold, color);
  }

  static getBoldSMCPStyle(
      {double fontSize = FontSize.s12, required Color color}) {
    return _getTextStyle(fontSize, FontWeightManager.bold, color,
        fontFeatures: const [FontFeature.enable('smcp')]);
  }

  static getBoldUnderLineStyle(
      {double fontSize = FontSize.s12, required Color color}) {
    return _getTextStyle(
      fontSize,
      FontWeightManager.bold,
      color,
      textDecoration: TextDecoration.underline,
      decorationColor: color,
    );
  }
//-------------------------------------------------------------------------------------------------------------------------------------------\\

  static green14w600() {
    return getBoldStyle(fontSize: FontSize.s14, color: AppColor.green);
  }

  static black12w600() {
    return getBoldStyle(fontSize: FontSize.s12, color: AppColor.black);
  }

  static black11w600() {
    return getBoldStyle(fontSize: FontSize.s11, color: AppColor.black);
  }

  static black14w600() {
    return getBoldStyle(fontSize: FontSize.s14, color: AppColor.black);
  }

  static black16w600() {
    return getBoldStyle(fontSize: FontSize.s16, color: AppColor.black);
  }

  static black30w600() {
    return getBoldStyle(fontSize: FontSize.s30, color: AppColor.black);
  }

  static black40w600() {
    return getBoldStyle(fontSize: FontSize.s40, color: AppColor.black);
  }

  static black14w600smcp() {
    return getBoldSMCPStyle(fontSize: FontSize.s14, color: AppColor.black);
  }

  static black18w600() {
    return getBoldSMCPStyle(fontSize: FontSize.s18, color: AppColor.black);
  }

  static black24w600() {
    return getBoldSMCPStyle(fontSize: FontSize.s24, color: AppColor.black);
  }

  static black28w600smcp() {
    return getBoldSMCPStyle(fontSize: FontSize.s28, color: AppColor.black);
  }

  static black22w600smcp() {
    return getBoldSMCPStyle(fontSize: FontSize.s22, color: AppColor.black);
  }

  static white14w600smcp() {
    return getBoldSMCPStyle(fontSize: FontSize.s14, color: AppColor.white);
  }

  static white14w600() {
    return getBoldSMCPStyle(fontSize: FontSize.s14, color: AppColor.white);
  }

  static white18w600smcp() {
    return getBoldSMCPStyle(fontSize: FontSize.s18, color: AppColor.white);
  }

  static white22w600smcp() {
    return getBoldSMCPStyle(fontSize: FontSize.s22, color: AppColor.white);
  }

  static white18w600() {
    return getBoldStyle(fontSize: FontSize.s18, color: AppColor.white);
  }

  static red22w600smcp() {
    return getBoldSMCPStyle(fontSize: FontSize.s22, color: AppColor.red);
  }

  static black12w600underline() {
    return getBoldUnderLineStyle(fontSize: FontSize.s12, color: AppColor.black);
  }
}
