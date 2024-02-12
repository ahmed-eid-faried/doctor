import 'dart:ui';

import 'package:doctor/core/core/imports/export_path_packages.dart';
import 'package:doctor/core/core/themes/decoration.dart';
import 'package:doctor/core/constant/color.dart';
import 'package:doctor/core/core/utils/extensions/landscape.dart';
import 'package:doctor/core/core/utils/values_manager.dart';
import 'package:flutter/material.dart';

import 'package:doctor/core/widgets/flip_direction.dart';
import 'package:doctor/core/widgets/layout.dart';

import 'bottom_bar_active_item.dart';
import 'bottom_bar_inactive_item.dart';
import 'bottom_bar_painter.dart';
import 'constants/constants.dart';
import 'controller/notch_bottom_bar_controller.dart';
import 'models/bottom_bar_item_model.dart';

/// Class to generate the NotchBottomBar
class AnimatedNotchBottomBar extends StatefulWidget {
  /// Controller for animation
  final NotchBottomBarController notchBottomBarController;

  /// List of items of bottom bar
  final List<BottomBarItem> bottomBarItems;

  /// Function called when an item was tapped
  final ValueChanged<int> onTap;

  /// Color of bottom bar
  final Color color;

  /// Boolean to show shadow
  final bool showShadow;

  /// Boolean to show bottom text
  final bool showLabel;

  /// TextStyle to show bottom text
  final TextStyle? itemLabelStyle;

  ///Boolean to show blur effect
  final bool showBlurBottomBar;

  ///Opacity
  final double blurOpacity;

  /// Filter X
  final double blurFilterX;

  /// Filter Y
  final double blurFilterY;

  /// Color of bottom bar
  final Color notchColor;

  final Shader? notchShader;

  final double? shadowElevation;

  final double kIconSize;

  final double kBottomRadius;

  /// Duration in milliseconds for animation
  final int durationInMilliSeconds;

  /// bottom bar width for web and desktop apps (It should be greater then 500 otherwise it will take media query width)
  // final double bottomBarWidth;

  /// Hide side and bottom margins of bottom navigation bar
  final bool removeMargins;

  const AnimatedNotchBottomBar({
    super.key,
    required this.notchBottomBarController,
    required this.bottomBarItems,
    required this.onTap,
    required this.kIconSize,
    this.color = Colors.white,
    this.itemLabelStyle,
    this.shadowElevation,
    this.showShadow = true,
    this.showLabel = true,
    required this.kBottomRadius,
    this.notchShader,
    this.showBlurBottomBar = false,
    this.blurOpacity = 0.5,
    this.blurFilterX = 5.0,
    this.blurFilterY = 10.0,
    this.notchColor = Colors.white,
    this.durationInMilliSeconds = 300,
    // this.bottomBarWidth = 500,
    this.removeMargins = false,
  });

  @override
  // ignore: library_private_types_in_public_api
  _AnimatedNotchBottomBarState createState() => _AnimatedNotchBottomBarState();
}

class _AnimatedNotchBottomBarState extends State<AnimatedNotchBottomBar>
    with SingleTickerProviderStateMixin {
  late double _screenWidth;
  int maxCount = 5;
  int currentIndex = 0;
  late final AnimationController _animationController;

  bool _isInitial = true;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _screenWidth = MediaQuery.of(context).size.width;
    // MediaQuery.of(context).size.width <= 500
    //     ? MediaQuery.of(context).size.width
    //     : widget.bottomBarWidth;
  }

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        vsync: this,
        duration: Duration(milliseconds: widget.durationInMilliSeconds));
    kHeight = widget.removeMargins ? 72.0 : 62.0;
    kMargin = widget.removeMargins ? 0 : 14.0;
    widget.notchBottomBarController.addListener(() {
      _animationController.reset();
      _animationController.forward();
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    /// throws exception if list length is more then 5
    if (widget.bottomBarItems.length > 5) {
      throw Exception(' Bottom bar item length should not be more than 5');
    }

    /// uncomment
    if (widget.notchBottomBarController.index >
        widget.bottomBarItems.length - 1) {
      throw Exception(
          ' Initial page index cannot be higher than bottom bar items length');
    }
    // final double height = kHeight + kMargin * 2;

    return widget.bottomBarItems.length > maxCount
        ? Container()
        : Align(
            alignment: Alignment.bottomCenter,
            child: AnimatedBuilder(
              animation: _animationController,
              builder: (BuildContext _, Widget? __) {
                ///to set any initial page
                double scrollPosition =
                    widget.notchBottomBarController.index.toDouble();
                // double factor = _screenWidth *
                // 0.16 *
                // widget.notchBottomBarController.index;
                int? currentIndex = widget.notchBottomBarController.index;
                if (widget.notchBottomBarController.oldIndex != null) {
                  _isInitial = false;
                  scrollPosition = Tween<double>(
                          begin: widget.notchBottomBarController.oldIndex!
                              .toDouble(),
                          end: widget.notchBottomBarController.index.toDouble())
                      // ignore: invalid_use_of_protected_member
                      .lerp(_animationController.value);
                  currentIndex = widget.notchBottomBarController.index;
                } else {
                  scrollPosition =
                      widget.notchBottomBarController.index.toDouble();
                  currentIndex = widget.notchBottomBarController.index;
                  widget.notchBottomBarController.oldIndex =
                      widget.notchBottomBarController.index;
                }

                int xFactor = widget.notchBottomBarController.index;
                double space = xFactor == 0
                    ? AppSize.s16.w
                    : xFactor == 1
                        ? AppSize.s14.w
                        : xFactor == 2
                            ? (AppSize.s20).w
                            : xFactor == 3
                                ? (AppSize.s24).w
                                : (AppSize.s28).w;
                double spaceMobile = xFactor == 0
                    ? AppSize.s6.w
                    : xFactor == 1
                        ? AppSize.s12.w
                        : xFactor == 2
                            ? AppSize.s16.w
                            : xFactor == 3
                                ? (AppSize.s22 + 1).w
                                : (AppSize.s26).w;
                double spaceTablet = xFactor == 0
                    ? AppSize.s5.w
                    : xFactor == 1
                        ? AppSize.s15.w
                        : xFactor == 2
                            ? AppSize.s24.w
                            : xFactor == 3
                                ? (AppSize.s32).w
                                : (AppSize.s44).w;
                double spaceLandscape = xFactor == 0
                    ? AppSize.s26.w
                    : xFactor == 1
                        ? (AppSize.s32 + 1).w
                        : xFactor == 2
                            ? AppSize.s40.w
                            : xFactor == 3
                                ? (AppSize.s46).w
                                : (AppSize.s50 + 3).w;

                bool directionalityState =
                    Directionality.of(context).toString() ==
                        "TextDirection.rtl";
                // var buttonSpacePortrait = (kCircleMargin +
                //     _itemPosByIndex(scrollPosition) -
                //     (LayoutValue.isTablet() ? spaceTablet : spaceMobile));
                double factorOfScrollingOfLandscape =
                    (LayoutValue.isLandscape() ? 0.5 : 1);
                double buttonSpace = (kCircleMargin +
                    _itemPosByIndex(
                        scrollPosition * factorOfScrollingOfLandscape) -
                    (LayoutValue.isLandscape()
                        ? spaceLandscape
                        : (LayoutValue.isTablet()
                            ? spaceTablet
                            : spaceMobile)));
                double space2 = LayoutValue.isLandscape() ? 15.w : 37.w;
                return ClipRRect(
                  clipBehavior: Clip.none,
                  child: Padding(
                    padding:
                        EdgeInsets.only(top: widget.removeMargins ? 22.0 : 8),
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: <Widget>[
                        BackdropFilter(
                          filter: ImageFilter.blur(
                            sigmaX: widget.showBlurBottomBar
                                ? widget.blurFilterX
                                : 0.0,
                            sigmaY: widget.showBlurBottomBar
                                ? widget.blurFilterY
                                : 0.0,
                          ),
                          child: Opacity(
                            opacity: widget.showBlurBottomBar
                                ? widget.blurOpacity
                                : 1,
                            child: FlipDirection(
                              child: CustomPaint(
                                // size: Size(_screenWidth, height),
                                size: Size(
                                    (AppSize.s100 * 3.58).landscapeFontW(),
                                    ((AppSize.s70 / (AppSize.s100 * 3.58)) *
                                            (AppSize.s100 * 3.58))
                                        .landscapeFontW()),

                                painter: BottomBarPainter(
                                  scrollPosition: scrollPosition,
                                  animationController: _animationController,
                                  oldIndex: widget
                                      .notchBottomBarController.oldIndex!
                                      .toDouble(),
                                  xFactor:
                                      widget.notchBottomBarController.index,
                                  positiony: widget.removeMargins
                                      ? ((-kCircleMargin / 2) - 10)
                                      : (kTopMargin - 10),
                                  position: (kCircleRadius -
                                      kCircleMargin / 2 +
                                      _itemPosByScrollPosition(scrollPosition) -
                                      space),
                                  // _itemPosByScrollPosition(scrollPosition).w,
                                  color: widget.color,
                                  showShadow: widget.showShadow,
                                  notchColor: widget.notchColor,
                                  shader: widget.notchShader,
                                  shadowElevation: widget.shadowElevation,
                                  kBottomRadius: widget.kBottomRadius,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: -18.sp,
                          // right: directionalityState ? buttonSpace : null,
                          // left: directionalityState ? null : buttonSpace,
                          left: 0, right: 0,
                          child: Row(
                            children: [
                              SizedBox(width: space2),
                              SizedBox(
                                  width: (358.w * 0.16) *
                                      scrollPosition *
                                      factorOfScrollingOfLandscape
                                  //  _itemPosByIndex(scrollPosition *
                                  // factorOfScrollingOfLandscape)
                                  ),
                              Container(
                                width: AppSize.s50.landscapeFontSp7(),
                                height: AppSize.s50.landscapeFontSp7(),
                                decoration: shapeDecoration(
                                  color: AppColor.red,
                                  shape: const OvalBorder(),
                                ),
                                child: AnimationSelectedWidget(
                                  controller: (p0) => _animationController,
                                  i: widget.notchBottomBarController.index,
                                  oldIndex:
                                      widget.notchBottomBarController.oldIndex,
                                  selectedIndex:
                                      widget.notchBottomBarController.index,
                                  child: BottomBarActiveItem(
                                    widget.notchBottomBarController.index,
                                    itemWidget: widget
                                        .bottomBarItems[widget
                                            .notchBottomBarController.index]
                                        .activeItem,
                                    scrollPosition: scrollPosition,
                                    onTap: widget.onTap,
                                    kIconSize: widget.kIconSize,
                                  ),
                                ),
                              ),
                              SizedBox(width: space2),
                            ],
                          ),
                        ),
                        Positioned(
                          top: 15,
                          bottom: 15,
                          right: 0,
                          left: 0,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20.0..landscapeFontW()),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: List.generate(
                                  5,
                                  (i) => i == currentIndex
                                      ? const IconButton(
                                          onPressed: null, icon: SizedBox())
                                      : AnimationUnSelectedWidget(
                                          controller: (p0) =>
                                              _animationController,
                                          i: i,
                                          oldIndex: widget
                                              .notchBottomBarController
                                              .oldIndex,
                                          selectedIndex: widget
                                              .notchBottomBarController.index,
                                          child: BottomBarInActiveItem(
                                            i,
                                            itemWidget: widget
                                                .bottomBarItems[i].inActiveItem,
                                            label: widget
                                                .bottomBarItems[i].itemLabel,
                                            onTap: (selectedIndex) {
                                              widget.notchBottomBarController
                                                  .jumpTo(selectedIndex);
                                              widget.onTap.call(selectedIndex);
                                            },
                                            showLabel: widget.showLabel,
                                            labelStyle: widget.itemLabelStyle,
                                            kIconSize: widget.kIconSize,
                                          ),
                                        ),
                                )),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          );
  }

  double _firstItemPosition(double spaceParameter) {
    return (_screenWidth - kMargin * 2) * spaceParameter;
  }

  double _lastItemPosition(double spaceParameter) {
    return _screenWidth -
        (_screenWidth - kMargin * 2) * spaceParameter -
        (kCircleRadius + kCircleMargin) * 2;
  }

  double _itemDistance() {
    return (_lastItemPosition(widget.removeMargins ? 0.05 : 0.1) -
            _firstItemPosition(widget.removeMargins ? 0.05 : 0.1)) /
        (widget.bottomBarItems.length - 1);
  }

  double _itemPosByScrollPosition(double scrollPosition) {
    return _firstItemPosition(widget.removeMargins ? 0.05 : 0.1) +
        _itemDistance() * scrollPosition;
  }

  double _itemPosByIndex(double index) {
    return _firstItemPosition(widget.removeMargins ? 0.05 : 0.1) +
        _itemDistance() * index;
  }
}

class AnimationSelectedWidget extends StatelessWidget {
  const AnimationSelectedWidget({
    super.key,
    required this.child,
    this.oldIndex,
    required this.selectedIndex,
    required this.i,
    this.controller,
  });
  final Widget child;
  final int? oldIndex;
  final int selectedIndex;
  final int i;
  final Function(AnimationController)? controller;

  @override
  Widget build(BuildContext context) {
    // Duration time = const Duration(microseconds: 500);

    return (oldIndex != null && selectedIndex == i)
        ? (oldIndex! > selectedIndex)
            ? Center(
                child: FadeInUp(
                    controller: controller,
                    // duration: time,
                    child: FadeInLeft(
                      controller: controller,
                      // duration: time,
                      child: child,
                    )),
              )
            : Center(
                child: FadeInUp(
                    controller: controller,
                    // duration: time,
                    child: FadeInRight(
                      controller: controller,
                      // duration: time,
                      child: child,
                    )),
              )
        : Center(child: child);
  }
}

class AnimationUnSelectedWidget extends StatelessWidget {
  const AnimationUnSelectedWidget({
    super.key,
    required this.child,
    this.oldIndex,
    required this.selectedIndex,
    required this.i,
    this.controller,
  });
  final Widget child;
  final int? oldIndex;
  final int selectedIndex;
  final int i;
  final Function(AnimationController)? controller;

  @override
  Widget build(BuildContext context) {
    // Duration time = const Duration(microseconds: 500);
    // printf("==========UnSelectedWidget===$i===============");
    // printf(oldIndex != null && oldIndex == i);
    // printf("============================");
    return (oldIndex != null && oldIndex == i && oldIndex! < selectedIndex)
        ? (oldIndex! > selectedIndex)
            ? FadeInDown(
                controller: controller,
                // duration: time,
                child: FadeInLeft(
                  controller: controller,
                  // duration: time,
                  child: child,
                ))
            : FadeInDown(
                controller: controller,
                // duration: time,
                child: FadeInRight(
                  controller: controller,
                  // duration: time,
                  child: child,
                ))
        : child;
  }
}
