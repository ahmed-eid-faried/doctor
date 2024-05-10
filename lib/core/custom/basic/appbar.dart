import 'package:doctor/core/constant/color.dart';
import 'package:doctor/core/core/utils/values_manager.dart';
import 'package:doctor/core/custom/basic/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppBarCustom extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(60);

  final IconData? iconData;
  final String? text;
  final Function? onPressed;
  final List<Widget>? actions;
  final bool? isNull;
  final TextAlign? textAlign;
  final double? fontSize;
  final FontWeight? fontWeight;
  final bool? centerTitle;
  final Widget? widget;
  final Color? backgroundColor;
  final Color? textColor;
  final Color? iconColor;
  final Brightness? brightness;
  final TextStyle? style;
  final Widget? leading;
  final bool automaticallyImplyLeading = true;
  final Widget? title;
  final Widget? flexibleSpace;
  final PreferredSizeWidget? bottom;
  final double? elevation;
  final double? scrolledUnderElevation;
  final bool Function(ScrollNotification) notificationPredicate =
      defaultScrollNotificationPredicate;
  final Color? shadowColor;
  final Color? surfaceTintColor;
  final ShapeBorder? shape;
  final Color? foregroundColor;
  final IconThemeData? iconTheme;
  final IconThemeData? actionsIconTheme;
  final bool primary = true;
  final bool excludeHeaderSemantics = false;
  final double? titleSpacing;
  final double toolbarOpacity = 1.0;
  final double bottomOpacity = 1.0;
  final double? toolbarHeight;
  final double? leadingWidth;
  final TextStyle? toolbarTextStyle;
  final TextStyle? titleTextStyle;
  final SystemUiOverlayStyle? systemOverlayStyle;
  final bool forceMaterialTransparency = false;
  const AppBarCustom({
    super.key,
    this.iconData = Icons.arrow_back_rounded,
    this.text = '',
    this.widget,
    this.onPressed,
    this.isNull = true,
    this.centerTitle = true,
    this.textAlign = TextAlign.center,
    this.fontSize = AppSize.s12 * 2,
    this.fontWeight = FontWeight.w600,
    this.backgroundColor = UIColor.background,
    this.brightness = Brightness.dark,
    this.textColor = AppColor.black,
    this.iconColor = UIColor.primary,
    this.actions,
    this.style,
    this.leading,
    this.title,
    this.flexibleSpace,
    this.bottom,
    this.elevation,
    this.scrolledUnderElevation,
    this.shadowColor,
    this.surfaceTintColor,
    this.shape,
    this.foregroundColor,
    this.iconTheme,
    this.actionsIconTheme,
    this.titleSpacing,
    this.toolbarHeight,
    this.leadingWidth,
    this.toolbarTextStyle,
    this.titleTextStyle,
    this.systemOverlayStyle,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      centerTitle: centerTitle,
      flexibleSpace: flexibleSpace,
      bottom: bottom,
      elevation: elevation,
      scrolledUnderElevation: scrolledUnderElevation,
      shadowColor: shadowColor,
      surfaceTintColor: surfaceTintColor,
      shape: shape,
      foregroundColor: foregroundColor,
      iconTheme: iconTheme,
      actionsIconTheme: actionsIconTheme,
      titleSpacing: titleSpacing,
      toolbarHeight: toolbarHeight,
      leadingWidth: leadingWidth,
      toolbarTextStyle: toolbarTextStyle,
      titleTextStyle: titleTextStyle,
      systemOverlayStyle: systemOverlayStyle ??
          SystemUiOverlayStyle(
            statusBarIconBrightness: brightness,
            statusBarColor: backgroundColor,
          ),
      leading: leading ??
          (isNull!
              ? IconButton(
                  onPressed: () {
                    onPressed == null ? null : onPressed!();
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    iconData,
                    color: iconColor,
                  ),
                )
              : widget),
      title: TextCustom(
        text!,
        textAlign: textAlign!,
        // style: style ?? AppFontStyle.black12w400(),
        // fontSize: fontSize,
        // fontWeight: fontWeight,
        // color: textColor,
      ),
      actions: actions,
    );
  }
}
