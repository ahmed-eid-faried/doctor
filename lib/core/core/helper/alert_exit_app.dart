import 'package:doctor/core/core/imports/export_path.dart';
import 'package:swipeable_page_route/swipeable_page_route.dart';

class Go {
  static popOrHome<T extends Object?>(BuildContext context, [T? result]) {
    // Navigator.canPop(context)
    //     ? Navigator.pop(context, result)
    //     : navigatorAndRemove(context, Routes.home);
  }

  static popScopeFun<T extends Object?>(BuildContext context, bool canPop,
      [T? result]) {
    canPop
        ? Navigator.pop(context, result)
        : {
            SystemNavigator.pop(),
          };
  }

  static pop<T extends Object?>(BuildContext context, [T? result]) {
    Navigator.canPop(context) ? Navigator.pop(context, result) : null;
  }

  static void knavigatorAndRemove(context, String screenName) {
    Navigator.of(context).pushReplacement(SwipeablePageRoute(
        builder: (BuildContext context) => RoutesMap.routeMap(screenName)));
  }

  static void navigatorAndRemove(context, String screenName) {
    Navigator.of(context).pushAndRemoveUntil(
        SwipeablePageRoute(
            builder: (BuildContext context) => RoutesMap.routeMap(screenName)),
        (Route<dynamic> route) => false);
  }

  static void navigator(context, String screenName) {
    Navigator.of(context).push(SwipeablePageRoute(
        builder: (BuildContext context) => RoutesMap.routeMap(screenName)));
  }
}
