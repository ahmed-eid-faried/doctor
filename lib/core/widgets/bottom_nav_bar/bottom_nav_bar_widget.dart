// import 'package:animate_do/animate_do.dart';
// import 'package:flutter/material.dart';
// import 'package:doctor/features/main_page/presentaion/controller/navigation_bar_cubit/navigation_bar_cubit.dart';

// import 'button_nav_bar_widget.dart';
// import 'rps_custom_painter.dart';

// class BottomNavBarWidget extends StatefulWidget {
//   const BottomNavBarWidget({
//     super.key,
//     required this.iconSvg0,
//     required this.iconSvg1,
//     required this.iconSvg2,
//     required this.iconSvg3,
//     required this.iconSvg4,
//     required this.xFactor,
//     this.duration = const Duration(milliseconds: 500),
//   });

//   final double xFactor;
//   final String iconSvg0;
//   final String iconSvg1;
//   final String iconSvg2;
//   final String iconSvg3;
//   final String iconSvg4;
//   final Duration duration;
//   @override
//   State<BottomNavBarWidget> createState() => _BottomNavBarWidgetState();
// }

// class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {
//   // late double _startingPos;
//   // double _endingIndex = 0;
//   // late double _pos;
//   // double buttonHide = 0;
//   // double xFactorDouble = 0;
//   // late AnimationController _animationController;
//   // late int _length;

//   // @override
//   // void initState() {
//   //   super.initState();
//   //   _length = 5;
//   //   _pos = widget.xFactor / _length;
//   //   _startingPos = widget.xFactor / _length;
//   //   _animationController = AnimationController(vsync: this, value: _pos);
//   //   _animationController.addListener(() {
//   //     setState(() {
//   //       _pos == _animationController.value + widget.xFactor;
//   //       // widget.xFactor = _animationController.value + widget.xFactor;
//   //       final endingPos = _endingIndex / 5;
//   //       final middle = (endingPos + _startingPos) / 2;
//   //       if ((endingPos - _pos).abs() < (_startingPos - _pos).abs()) {
//   //         xFactorDouble = widget.xFactor;
//   //       }
//   //       buttonHide =
//   //           (1 - ((middle - _pos) / (_startingPos - middle)).abs()).abs();
//   //     });
//   //   });
//   // }

//   // @override
//   // void didUpdateWidget(BottomNavBarWidget oldWidget) {
//   //   super.didUpdateWidget(oldWidget);
//   //   if (oldWidget.xFactor != widget.xFactor) {
//   //     final newPosition = widget.xFactor / _length;
//   //     _startingPos = _pos;
//   //     _endingIndex = widget.xFactor;
//   //     _animationController.animateTo(newPosition,
//   //         duration: const Duration(milliseconds: 500), curve: Curves.easeIn);
//   //   }
//   // }

//   // @override
//   // void dispose() {
//   //   _animationController.dispose();
//   //   super.dispose();
//   // }

//   // @override
//   // void didUpdateWidget(BottomNavBarWidget oldWidget) {
//   //   super.didUpdateWidget(oldWidget);
//   //   controller.duration = widget.duration;
//   // }

//   @override
//   Widget build(BuildContext context) {
//     var cubit = NavigationBarCubit.get(context);

//     double xAxisFactor;
//     bool directionalityState =
//         Directionality.of(context).toString() == "TextDirection.rtl";
//     // xAxisFactor = widget.xFactor;
//     xAxisFactor = widget.xFactor;
//     double left2 = xAxisFactor == 0
//         ? AppSize.s36.landscapeFontW()
//         : xAxisFactor == 1
//             ? AppSize.s95.landscapeFontW()
//             : xAxisFactor == AppSize.s2
//                 ? (AppSize.s100 * 1.52).landscapeFontW()
//                 : xAxisFactor == 3
//                     ? (AppSize.s100 * 2.1).landscapeFontW()
//                     : (AppSize.s100 * 2.68).landscapeFontW();
//     return AnimatedContainer(
//       duration: const Duration(seconds: 2),
//       width: (AppSize.s100 * 3.58).landscapeFontW(),
//       height: (0.3 * (AppSize.s100 * 3.58)).landscapeFontW(),
//       margin: EdgeInsets.all(AppMargin.m16.r),
//       child: Stack(
//         children: [
//           Positioned(
//             top: 38.h,
//             child: FlipDirection(
//               child: CustomPaint(
//                 size: Size(
//                     (AppSize.s100 * 3.58).landscapeFontW(),
//                     ((AppSize.s70 / (AppSize.s100 * 3.58)) *
//                             (AppSize.s100 * 3.58))
//                         .landscapeFontW()),
//                 painter: BottomNavBarRPSCustomPainter(xAxisFactor: xAxisFactor),
//                 child: Container(
//                   width: (AppSize.s100 * 3.58).landscapeFontW(),
//                   height: ((AppSize.s70 / (AppSize.s100 * 3.58)) *
//                           (AppSize.s100 * 3.58))
//                       .landscapeFontW(),
//                   padding: EdgeInsets.symmetric(
//                       horizontal: AppPadding.p20.landscapeFontW()),
//                   child: Directionality(
//                     textDirection: TextDirection.ltr,
//                     child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           xAxisFactor == 0
//                               ? SizedBox(width: AppSize.s44.landscapeFontW())
//                               : ButtonNavBarWidget(
//                                   iconSvg: widget.iconSvg0,
//                                   currentIndex: 0,
//                                   // tickerProvider: this,
//                                   animate: xAxisFactor == 0),
//                           const Spacer(),
//                           xAxisFactor == 1
//                               ? SizedBox(width: AppSize.s44.landscapeFontW())
//                               : ButtonNavBarWidget(
//                                   iconSvg: widget.iconSvg1,
//                                   currentIndex: 1,
//                                   // tickerProvider: this,
//                                   animate: xAxisFactor == 1),
//                           const Spacer(),
//                           xAxisFactor == 2
//                               ? SizedBox(width: AppSize.s44.landscapeFontW())
//                               : ButtonNavBarWidget(
//                                   iconSvg: widget.iconSvg2,
//                                   currentIndex: 2,
//                                   // tickerProvider: this,
//                                   animate: xAxisFactor == 2),
//                           const Spacer(),
//                           xAxisFactor == 3
//                               ? SizedBox(width: AppSize.s44.landscapeFontW())
//                               : ButtonNavBarWidget(
//                                   iconSvg: widget.iconSvg3,
//                                   currentIndex: 3,
//                                   // tickerProvider: this,
//                                   animate: xAxisFactor == 3),
//                           const Spacer(),
//                           xAxisFactor == 4
//                               ? SizedBox(width: AppSize.s44.landscapeFontW())
//                               : ButtonNavBarWidget(
//                                   iconSvg: widget.iconSvg4,
//                                   currentIndex: 4,
//                                   // tickerProvider: this,
//                                   animate: xAxisFactor == 4),
//                         ]),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           Positioned(
//             top: 15.36.h,
//             left: directionalityState ? null : left2,
//             right: directionalityState ? left2 : null,
//             child: Container(
//               width: AppSize.s50.landscapeFontWS4(),
//               height: AppSize.s50.landscapeFontWS4(),
//               decoration: shapeDecoration(
//                 color: AppColor.red,
//                 shape: const OvalBorder(),
//               ),
//               child: FadeInUp(
//                 child: Center(
//                   child: FlipDirection(
//                     child: SvgPictureCustom(
//                       xAxisFactor == 0 || widget.xFactor < 1
//                           ? widget.iconSvg0
//                           : xAxisFactor == 1 || widget.xFactor < 2
//                               ? widget.iconSvg1
//                               : xAxisFactor == 2 || widget.xFactor < 3
//                                   ? widget.iconSvg2
//                                   : xAxisFactor == 3 || widget.xFactor < 4
//                                       ? widget.iconSvg3
//                                       : widget.iconSvg4,
//                       width: AppSize.s24.landscapeFontW(),
//                       height: AppSize.s24.landscapeFontW(),
//                       colorFilter: const ColorFilter.mode(
//                           AppColor.white, BlendMode.srcIn),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
