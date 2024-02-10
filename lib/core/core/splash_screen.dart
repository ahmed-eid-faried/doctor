

// import 'package:doctor/core/core/imports/export_path.dart';

// class MyAnimatedSplashScreen extends StatefulWidget {
//   const MyAnimatedSplashScreen({super.key});

//   @override
//   State<MyAnimatedSplashScreen> createState() => _MyAnimatedSplashScreenState();
// }

// class _MyAnimatedSplashScreenState extends State<MyAnimatedSplashScreen> {
//   // @override
//   // void dispose() {
//   //   FlutterRingtonePlayer().stop();
//   //   super.dispose();
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return AnimatedSplashScreen(
//         duration: 1000,
//         splash: const AnimatedSplashWidget(),
//         nextScreen:
//             // Container(color: AppColor.red),
//             Middlewares.page(),
//         // nextScreen: const MyAnimatedSplashScreen(),
//         splashTransition: SplashTransition.fadeTransition,
//         pageTransitionType: PageTransitionType.fade,
//         // backgroundColor: Colors.blue
//         centered: false,
//         disableNavigation: false,
//         splashIconSize: double.infinity);
//   }
// }

// class AnimatedSplashWidget extends StatelessWidget {
//   const AnimatedSplashWidget({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     // FlutterRingtonePlayer()
//     //     .play(fromAsset: "assets/sound/sound.mp3", volume: 0.1, looping: false);
//     return CustomScaffold(
//       body: Container(
//         width: double.infinity,
//         height: double.infinity,
//         decoration: const BoxDecoration(
//           color: Colors.white,
//         ),
//         child: Stack(
//           children: [
//             Align(
//               alignment: Alignment.bottomCenter,
//               child: Lottie.asset('assets/splash.json',
//                   // repeat: false,
//                   reverse: true,
//                   width: double.infinity,
//                   height: 300.h,
//                   fit: BoxFit.cover),
//             ),
//             SizedBox(
//               width: double.infinity,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   const Spacer(),
//                   FadeIn(
//                     animate: true,
//                     child: Image.asset(AppImage.logo,
//                         width: 110.0.landscapeFontSp(),
//                         height: 110.0.landscapeFontSp()),
//                   ),
//                   FadeIn(
//                       child: Image.asset(AppImage.biglogo,
//                           width: 183.0.landscapeFontSp())),
//                   const Spacer(),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
