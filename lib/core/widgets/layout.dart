import 'dart:io' show Platform;

import 'package:doctor/core/core/imports/export_path_packages.dart';
import 'package:flutter/material.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({
    super.key,
    required this.mobilePortrait,
    required this.tabletPortrait,
    required this.mobileLandscape,
    required this.tabletLandscape,
    // required this.backgroundColor
  });
  final Widget mobilePortrait;
  final Widget tabletPortrait;
  final Widget mobileLandscape;
  final Widget tabletLandscape;
  // final Color backgroundColor;
  @override
  Widget build(BuildContext context) {
    return OrientationLayoutBuilder(
      portrait: (context) => ScreenTypeLayout.builder(
        mobile: (BuildContext context) => mobilePortrait,
        tablet: (BuildContext context) => tabletPortrait,
      ),
      landscape: (context) => ScreenTypeLayout.builder(
        mobile: (BuildContext context) => mobileLandscape,
        tablet: (BuildContext context) => tabletLandscape,
      ),
    );
  }
}

layout({
  required Widget mobilePortrait,
  required Widget tabletPortrait,
  required Widget mobileLandscape,
  required Widget tabletLandscape,
}) {
  return OrientationLayoutBuilder(
    portrait: (context) => ScreenTypeLayout.builder(
      mobile: (BuildContext context) => mobilePortrait,
      tablet: (BuildContext context) => tabletPortrait,
    ),
    landscape: (context) => ScreenTypeLayout.builder(
      mobile: (BuildContext context) => mobileLandscape,
      tablet: (BuildContext context) => tabletLandscape,
    ),
  );
}

class LayoutValue {
  static kDouble({
    required double mobileValue,
    required double tabletValue,
    required double desktopValue,
  }) {
    if (ScreenUtil().deviceType() == DeviceType.mobile) {
      return mobileValue;
    } else if (ScreenUtil().deviceType() == DeviceType.tablet) {
      return tabletValue;
    } else {
      return desktopValue;
    }
  }

  static kInt({
    required int mobileValue,
    required int tabletValue,
    required int desktopValue,
  }) {
    if (ScreenUtil().deviceType() == DeviceType.mobile) {
      return mobileValue;
    } else if (ScreenUtil().deviceType() == DeviceType.tablet) {
      return tabletValue;
    } else {
      return desktopValue;
    }
  }

  static kUrl({
    required String mobileValue,
    required String tabletValue,
    required String desktopValue,
  }) {
    if (ScreenUtil().deviceType() == DeviceType.mobile) {
      return mobileValue;
    } else if (ScreenUtil().deviceType() == DeviceType.tablet) {
      return tabletValue;
    } else {
      return desktopValue;
    }
  }

  static bool isPortrait() {
    return ScreenUtil().orientation == Orientation.portrait;
  }

  static bool isLandscape() {
    return ScreenUtil().orientation == Orientation.landscape;
  }

  static bool isMoblie() {
    return ScreenUtil().deviceType() == DeviceType.mobile;
  }

  static bool isTablet() {
    return ScreenUtil().deviceType() == DeviceType.tablet;
  }

  static bool isdesktop() {
    return (isMac() || isWindows() || isWeb() || islinux());
  }

  static bool isMac() {
    return ScreenUtil().deviceType() == DeviceType.mac;
  }

  static bool isWindows() {
    return ScreenUtil().deviceType() == DeviceType.windows;
  }

  static bool isWeb() {
    return ScreenUtil().deviceType() == DeviceType.web;
  }

  static bool isfuchsia() {
    return ScreenUtil().deviceType() == DeviceType.fuchsia;
  }

  static bool islinux() {
    return ScreenUtil().deviceType() == DeviceType.linux;
  }

  static bool isAndroid() {
    return Platform.isAndroid;
  }

  static bool isIOS() {
    return Platform.isIOS;
  }

  static cupertinoWidget({
    required iosChild,
    required androidChild,
  }) {
    if (Platform.isIOS) {
      return iosChild;
    } else {
      return androidChild;
    }
  }
}
