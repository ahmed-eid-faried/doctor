import '../../../core/imports/export_path.dart';

extension LandscapeFont on double {
  double landscapeFontSp() => ScreenUtil().orientation == Orientation.landscape
      ? ScreenUtil().setSp(this) * 0.5
      : ScreenUtil().setSp(this);
  double landscapeFontSp7() => ScreenUtil().orientation == Orientation.landscape
      ? ScreenUtil().setSp(this) * 0.65
      : ScreenUtil().setSp(this);
  double landscapeFontW() => ScreenUtil().orientation == Orientation.landscape
      ? ScreenUtil().setWidth(this) * 0.5
      : ScreenUtil().setWidth(this);
  double landscapeFontW07() => ScreenUtil().orientation == Orientation.landscape
      ? ScreenUtil().setWidth(this) * 0.7
      : ScreenUtil().setWidth(this);

  double landscapeFontWS4() => ScreenUtil().orientation == Orientation.landscape
      ? ScreenUtil().setWidth(this) * 0.45
      : ScreenUtil().setWidth(this);
  double landscapeFontH() => ScreenUtil().orientation == Orientation.landscape
      ? ScreenUtil().setHeight(this) * 0.5
      : ScreenUtil().setHeight(this);
  double landscapeFontHx() => ScreenUtil().orientation == Orientation.landscape
      ? ScreenUtil().setHeight(this) * 1.25
      : ScreenUtil().setHeight(this);
  double landscapeFontH2x() => ScreenUtil().orientation == Orientation.landscape
      ? ScreenUtil().setHeight(this) * 2
      : ScreenUtil().setHeight(this);
  double landscapeFontH4x() => ScreenUtil().orientation == Orientation.landscape
      ? ScreenUtil().setHeight(this) * 4
      : ScreenUtil().setHeight(this);
  double landscapeFontH8x() => ScreenUtil().orientation == Orientation.landscape
      ? ScreenUtil().setHeight(this) * 8
      : ScreenUtil().setHeight(this);
  double landscapeFontR() => ScreenUtil().orientation == Orientation.landscape
      ? ScreenUtil().radius(this) * 1.5
      : ScreenUtil().radius(this);
  // double landscapeFontR2() => ScreenUtil().orientation == Orientation.landscape
  //     ? ScreenUtil().radius(this) * 2
  //     : ScreenUtil().radius(this);
  double landscapeFlipH() => ScreenUtil().orientation == Orientation.landscape
      ? 1 / ScreenUtil().setWidth(this)
      : ScreenUtil().setHeight(this);
  double landscapeFlipW() => ScreenUtil().orientation == Orientation.landscape
      ? 1 / ScreenUtil().setHeight(this)
      : ScreenUtil().setWidth(this);
}

extension LandscapeNum on int {
  int landscapeNum2() => ScreenUtil().orientation == Orientation.landscape
      ? fun(this) * 2
      : fun(this);
  int landscapeNum4() => ScreenUtil().orientation == Orientation.landscape
      ? fun(this) * 2
      : fun(this);
}

fun(int x) {
  return x;
}
