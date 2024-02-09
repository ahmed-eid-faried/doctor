import 'package:doctor/core/constant/routes.dart';
import 'package:doctor/core/middleware/middlewares.dart';
import 'package:doctor/features/onboarding/view/screens/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

List<GetPage<dynamic>>? routes = [
  // GetPage(name: "/test", page: () => const MySignIn()),

  //lang
  GetPage(
    name: AppRoute.lang,
    page: () => const MyWidget(),
    // middlewares: [MiddlewaresLogin()],
  ),

  // onboarding
  GetPage(name: AppRoute.onboarding, page: () => const OnBoardingView()),
];

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      child: Center(
        child: ElevatedButton(
            onPressed: () {
              Get.offAllNamed(AppRoute.onboarding);
            },
            child: const Text("go")),
      ),
    );
  }
}
