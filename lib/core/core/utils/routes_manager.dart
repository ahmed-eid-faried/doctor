// import 'package:doctor/core/core/splash_screen.dart';
// import 'package:flutter/material.dart';

// class Routes {
//   //for ios must be "/" only
//   // static const String myAnimatedSplashScreen = "/";
//   static const String myAnimatedSplashScreen = "/myAnimatedSplashScreen";
//   static const String screens = "/screens";
//   static const String home = "/home";
//   static const String recentOrders = "/recentOrders";
//   static const String balance = "/balance";
//   static const String mystore = "/mystore";
//   static const String addproduct = "/addproduct";

//   // Screens
//   // static Route createRoute(String screen) {
//   //   return LayoutValue.isIOS()
//   //       ? CupertinoPageRoute(builder: (context) => RoutesMap.routeMap(screen))
//   //       : PageRouteBuilder(
//   //           pageBuilder: (context, animation, secondaryAnimation) =>
//   //               RoutesMap.routeMap(screen),
//   //           transitionsBuilder:
//   //               (context, animation, secondaryAnimation, child) {
//   //             var begin = const Offset(1.0, 0.0);
//   //             const end = Offset.zero;
//   //             const curve = Curves.easeOut;
//   //             var tween =
//   //                 Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
//   //             return SlideTransition(
//   //               position: animation.drive(tween),
//   //               child: child,
//   //             );
//   //           },
//   //         );
//   // }
// }

// class RoutesMap {
//   static Map<String, Widget Function(BuildContext)> routesMap() {
//     return {
//       Routes.myAnimatedSplashScreen: (p0) =>  MyAnimatedSplashScreen(),
//     };
//   }

//   static Widget routeMap(String screen) {
//     switch (screen) {
//       case Routes.myAnimatedSplashScreen:
//         return  MyAnimatedSplashScreen();
//       case Routes.screens:
//         return  Screens();
//       case Routes.home:
//         return  Home();

//       default:
//         return  MyAnimatedSplashScreen();
//     }
//   }
// }
