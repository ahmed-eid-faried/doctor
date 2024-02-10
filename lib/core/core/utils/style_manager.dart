import 'dart:ui';

import 'package:doctor/core/core/utils/constants/colors.dart';
import 'package:doctor/core/core/utils/constants_manager.dart';
import 'package:doctor/core/core/utils/extensions/landscape.dart';

import 'font_manager.dart';

class AppFontStyle {
  static TextStyle _getTextStyle(
      double fontSize, FontWeight fontWeight, Color color,
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

  static TextStyle getRegularStyle(
      {double fontSize = FontSize.s12, required Color color}) {
    return _getTextStyle(fontSize, FontWeightManager.regular, color);
  }

  static TextStyle getRegularSMCPStyle(
      {double fontSize = FontSize.s12, required Color color}) {
    return _getTextStyle(fontSize, FontWeightManager.regular, color,
        fontFeatures: const [FontFeature.enable('smcp')]);
  }

  static TextStyle getRegularUnderLineStyle(
      {double fontSize = FontSize.s12, required Color color}) {
    return _getTextStyle(
      fontSize,
      FontWeightManager.regular,
      color,
      textDecoration: TextDecoration.underline,
      decorationColor: color,
    );
  }

  static TextStyle getRegularLineThroughStyle(
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

  static TextStyle grey12w400() {
    return getRegularStyle(color: AppColor.grey);
  }

  static TextStyle grey12w400smcp() {
    return getRegularSMCPStyle(fontSize: FontSize.s11, color: AppColor.grey);
  }

  static TextStyle lightGrey12w400() {
    return getRegularStyle(color: AppColor.lightGrey);
  }

  static TextStyle grey11w400() {
    return getRegularStyle(fontSize: FontSize.s11, color: AppColor.grey);
  }

  static TextStyle orange11w400() {
    return getRegularStyle(fontSize: FontSize.s11, color: AppColor.orange);
  }

  static TextStyle green11w400() {
    return getRegularStyle(fontSize: FontSize.s11, color: AppColor.green);
  }

  static TextStyle grey14w400() {
    return getRegularStyle(fontSize: FontSize.s14, color: AppColor.grey);
  }

  static TextStyle black12w400() {
    return getRegularStyle(color: AppColor.black);
  }

  static TextStyle darkBlue14w400() {
    return getRegularStyle(fontSize: FontSize.s14, color: AppColor.darkBlue);
  }

  static TextStyle darkBlue20w400() {
    return getRegularStyle(fontSize: FontSize.s20, color: AppColor.darkBlue);
  }

  static TextStyle black14w400() {
    return getRegularStyle(fontSize: FontSize.s14, color: AppColor.black);
  }

  static TextStyle black10w400() {
    return getRegularStyle(fontSize: FontSize.s10 * 0.9, color: AppColor.black);
  }

  static TextStyle black11w400() {
    return getRegularStyle(fontSize: FontSize.s11, color: AppColor.black);
  }

  static TextStyle grey411w400() {
    return getRegularStyle(fontSize: FontSize.s11, color: AppColor.grey4);
  }

  static TextStyle black16w400() {
    return getRegularStyle(fontSize: FontSize.s16, color: AppColor.black);
  }

  static TextStyle white11w400() {
    return getRegularStyle(fontSize: FontSize.s11, color: AppColor.white);
  }

  static TextStyle white12w400() {
    return getRegularStyle(fontSize: FontSize.s12, color: AppColor.white);
  }

  static TextStyle white14w400() {
    return getRegularStyle(fontSize: FontSize.s14, color: AppColor.white);
  }

  static TextStyle red11w400() {
    return getRegularStyle(fontSize: FontSize.s11, color: AppColor.red);
  }

  static TextStyle red12w400() {
    return getRegularStyle(fontSize: FontSize.s12, color: AppColor.red);
  }

  static TextStyle green12w400() {
    return getRegularStyle(fontSize: FontSize.s12, color: AppColor.green);
  }

  static TextStyle black12w400smcp() {
    return getRegularSMCPStyle(color: AppColor.black);
  }

  static TextStyle black14w400smcp() {
    return getRegularSMCPStyle(fontSize: FontSize.s14, color: AppColor.black);
  }

  static TextStyle black16w400smcp() {
    return getRegularSMCPStyle(fontSize: FontSize.s16, color: AppColor.black);
  }

  static TextStyle white14w400smcp() {
    return getRegularSMCPStyle(fontSize: FontSize.s14, color: AppColor.white);
  }

  static TextStyle white22w400smcp() {
    return getRegularSMCPStyle(fontSize: FontSize.s22, color: AppColor.white);
  }

  static TextStyle white14w400underline() {
    return getRegularUnderLineStyle(
        fontSize: FontSize.s14, color: AppColor.white);
  }

  static TextStyle red12w400underline() {
    return getRegularUnderLineStyle(
        fontSize: FontSize.s12, color: AppColor.red);
  }

  static TextStyle grey11w400lineThrough() {
    return getRegularLineThroughStyle(
        fontSize: FontSize.s11, color: AppColor.grey);
  }

// medium style

  static TextStyle getMediumStyle(
      {double fontSize = FontSize.s12, required Color color}) {
    return _getTextStyle(fontSize, FontWeightManager.medium, color);
  }

  static TextStyle getMediumSMCPStyle(
      {double fontSize = FontSize.s12, required Color color}) {
    return _getTextStyle(fontSize, FontWeightManager.medium, color,
        fontFeatures: const [FontFeature.enable('smcp')]);
  }

  static TextStyle getMediumUnderLineStyle(
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

  static TextStyle grey14w500() {
    return getMediumStyle(fontSize: FontSize.s14, color: AppColor.grey);
  }

  static TextStyle black12w500() {
    return getMediumStyle(fontSize: FontSize.s12, color: AppColor.black);
  }

  static TextStyle black11w500() {
    return getMediumStyle(fontSize: FontSize.s11, color: AppColor.black);
  }

  static TextStyle black14w500() {
    return getMediumStyle(fontSize: FontSize.s14, color: AppColor.black);
  }

  static TextStyle black16w500() {
    return getMediumStyle(fontSize: FontSize.s16, color: AppColor.black);
  }

  static TextStyle white14w500() {
    return getMediumStyle(fontSize: FontSize.s14, color: AppColor.white);
  }

  static TextStyle green12w500() {
    return getMediumStyle(fontSize: FontSize.s12, color: AppColor.green);
  }

  static TextStyle red12w500() {
    return getMediumStyle(fontSize: FontSize.s12, color: AppColor.red);
  }

  static TextStyle black14w500smcp() {
    return getMediumSMCPStyle(fontSize: FontSize.s14, color: AppColor.black);
  }

  static TextStyle white14w500smcp() {
    return getMediumSMCPStyle(fontSize: FontSize.s14, color: AppColor.white);
  }

  static TextStyle red12w500underline() {
    return getMediumUnderLineStyle(fontSize: FontSize.s14, color: AppColor.red);
  }

// bold style

  static TextStyle getBoldStyle(
      {double fontSize = FontSize.s12, required Color color}) {
    return _getTextStyle(fontSize, FontWeightManager.bold, color);
  }

  static TextStyle getBoldSMCPStyle(
      {double fontSize = FontSize.s12, required Color color}) {
    return _getTextStyle(fontSize, FontWeightManager.bold, color,
        fontFeatures: const [FontFeature.enable('smcp')]);
  }

  static TextStyle getBoldUnderLineStyle(
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

  static TextStyle green14w600() {
    return getBoldStyle(fontSize: FontSize.s14, color: AppColor.green);
  }

  static TextStyle black12w600() {
    return getBoldStyle(fontSize: FontSize.s12, color: AppColor.black);
  }

  static TextStyle black11w600() {
    return getBoldStyle(fontSize: FontSize.s11, color: AppColor.black);
  }

  static TextStyle black14w600() {
    return getBoldStyle(fontSize: FontSize.s14, color: AppColor.black);
  }

  static TextStyle black16w600() {
    return getBoldStyle(fontSize: FontSize.s16, color: AppColor.black);
  }

  static TextStyle black30w600() {
    return getBoldStyle(fontSize: FontSize.s30, color: AppColor.black);
  }

  static TextStyle black40w600() {
    return getBoldStyle(fontSize: FontSize.s40, color: AppColor.black);
  }

  static TextStyle black14w600smcp() {
    return getBoldSMCPStyle(fontSize: FontSize.s14, color: AppColor.black);
  }

  static TextStyle black18w600() {
    return getBoldSMCPStyle(fontSize: FontSize.s18, color: AppColor.black);
  }

  static TextStyle black24w600() {
    return getBoldSMCPStyle(fontSize: FontSize.s24, color: AppColor.black);
  }

  static TextStyle black28w600smcp() {
    return getBoldSMCPStyle(fontSize: FontSize.s28, color: AppColor.black);
  }

  static TextStyle black22w600smcp() {
    return getBoldSMCPStyle(fontSize: FontSize.s22, color: AppColor.black);
  }

  static TextStyle white14w600smcp() {
    return getBoldSMCPStyle(fontSize: FontSize.s14, color: AppColor.white);
  }

  static TextStyle white14w600() {
    return getBoldSMCPStyle(fontSize: FontSize.s14, color: AppColor.white);
  }

  static TextStyle white18w600smcp() {
    return getBoldSMCPStyle(fontSize: FontSize.s18, color: AppColor.white);
  }

  static TextStyle white22w600smcp() {
    return getBoldSMCPStyle(fontSize: FontSize.s22, color: AppColor.white);
  }

  static TextStyle white18w600() {
    return getBoldStyle(fontSize: FontSize.s18, color: AppColor.white);
  }

  static TextStyle red22w600smcp() {
    return getBoldSMCPStyle(fontSize: FontSize.s22, color: AppColor.red);
  }

  static TextStyle black12w600underline() {
    return getBoldUnderLineStyle(fontSize: FontSize.s12, color: AppColor.black);
  }
}
