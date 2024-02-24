// import 'package:flutter/material.dart';
// import 'package:doctor/core/widgets/icon_button/icon_button.dart';
// import 'package:doctor/core/widgets/text_custom/text_custom.dart';

// class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
//   const CustomAppBar({
//     super.key,
//     required this.title,
//     this.backgroundColor = AppColor.white,
//     this.isBack = true,
//     this.mTop = AppMargin.m20,
//     this.height = 75,
//   });

//   final String title;
//   final Color backgroundColor;
//   final bool isBack;
//   final double mTop;
//   final double height;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.only(top: AppPadding.p20.h),
//       height: height,
//       margin: EdgeInsets.only(top: mTop.h),
//       width: double.infinity,
//       color: backgroundColor,
//       // decoration: BoxDecoration(color: backgroundColor),
//       child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
//         Visibility(
//           visible: isBack,
//           child: IconButtonCustom(
//             isFlip: true,
//             width: AppSize.s8.landscapeFontSp(),
//             height: AppSize.s14.landscapeFontSp(),
//             iconName: AppSvg.backIcon,
//             color: AppColor.black,
//             onPressed: () {
//               Navigator.of(context).pop(true);
//             },
//           ),
//         ),
//         // IconButtonCustom(
//         //   isFlip: false,
//         //   iconName: AppSvg.search,
//         //   onPressed: () {
//         //     // Go.navigator(context, Routes.searchDelegatePage);
//         //   },
//         // ),
//         // Visibility(visible: !isBack, child: const SizedBox(width: AppSize.s50)),
//         const Spacer(),
//         Center(
//             child:
//                 TextCustom(text: title, style: AppFontStyle.black16w400smcp())),
//         const Spacer(),
//         SizedBox(width: AppSize.s18.w),
//         // Stack(
//         //   children: [
//         //     IconButtonCustom(
//         //       iconName: AppSvg.notification,
//         //       onPressed: () {
//         //         // Go.navigator(context, Routes.notifications);
//         //       },
//         //     ),
//         //     if (1 == 0) const NumOfNotifications()
//         //   ],
//         // ),
//         // // SizedBox(width: AppSize.s16.landscapeFontSp()),
//         // Stack(
//         //   children: [
//         //     IconButtonCustom(
//         //       // width: AppSize.s24.landscapeFontSp(),
//         //       // height: AppSize.s24.landscapeFontSp(),
//         //       iconName: AppSvg.shoppingcart,
//         //       onPressed: () {
//         //         // Go.navigator(context, Routes.cartView);
//         //       },
//         //     ),
//         //     if (1 == 0) const NumOfNotifications()
//         //   ],
//         // ),
//         // SizedBox(width: AppSize.s20.landscapeFontSp()),
//       ]),
//     );
//   }

//   @override
//   Size get preferredSize => Size(double.infinity, height);
// }

import 'package:doctor/core/constant/color.dart';
import 'package:doctor/core/constant/fonts.dart';
import 'package:doctor/core/core/imports/export_path.dart';
import 'package:doctor/core/core/utils/font_manager.dart';
import 'package:doctor/core/custom/basic/text.dart';
import 'package:doctor/core/widgets/icon_button/icon_button.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(65);

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
  // final Color? backgroundColor;
  final Color? textColor;
  final Color? iconColor;
  final Brightness? brightness;
  final double elevation;
  final bool isBack;
  final PreferredSizeWidget? bottom;
  const CustomAppBar({
    super.key,
    this.iconData = Icons.arrow_back_rounded,
    this.text = '',
    this.widget,
    this.onPressed,
    this.isNull = true,
    this.centerTitle = false,
    this.textAlign = TextAlign.center,
    this.fontSize = FontSize.s12 * 2,
    this.fontWeight = FontWeight.w600,
    // this.backgroundColor = AppColor.white,
    this.brightness = Brightness.dark,
    this.textColor = AppColor.black,
    this.iconColor = AppColor.black,
    this.actions,
    this.elevation = 0,
    this.isBack = true,
    this.bottom,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      bottom: bottom,
      elevation: elevation,
      backgroundColor: Colors.transparent.withOpacity(.01),
      centerTitle: centerTitle,
      // systemOverlayStyle: SystemUiOverlayStyle(
      //   statusBarIconBrightness: brightness,
      //   statusBarColor: backgroundColor,
      // ),
      // leading: isNull!
      //     ? IconButton(
      //         onPressed: () {
      //           onPressed == null ? null : onPressed!();
      //           Navigator.pop(context);
      //         },
      //         icon: Icon(
      //           iconData,
      //           color: iconColor,
      //         ),
      //       )
      // : widget,
      leading: Visibility(
        visible: isBack,
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: IconButtonCustom(
            // height: AppSize.s24,
            // width: AppSize.s24,
            isFlip: false,
            width: AppSize.s8.landscapeFontSp(),
            height: AppSize.s14.landscapeFontSp(),
            iconName: AppSvg.backIcon,
            color: AppColor.black,
            borderRadius: 10,
            btnColor: AppColor.btnColor,
            onPressed: () {
              Navigator.of(context).pop(true);
            },
          ),
        ),
      ),
      title: TextCustom(
        text ?? "",
        style: AppFontStyle.textTitle18w500,
      ),
      actions: actions,
    );
  }
}
