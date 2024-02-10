import 'package:doctor/core/constant/image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:doctor/features/Home/controller/Home.dart';

class HomeView extends GetView<HomeControllerImp> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: 375.w,
        height: 156.h,
        child: Stack(
          children: [
            Positioned(
              child: Container(
                width: 375.w,
                height: 156.h,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment(0.98, -0.19),
                    end: Alignment(-0.98, 0.19),
                    colors: [Color(0xFF0EBE7E), Color(0xFF07D9AD)],
                  ),
                ),
              ),
            ),
            Positioned(
              left: 20.w,
              right: 20.w,
              top: 50.h,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Hi Handwerker! ',
                            style: TextStyle(
                              color: Color(0xFFF9F9F9),
                              fontSize: 20,
                              fontFamily: 'Rubik',
                              fontWeight: FontWeight.w400,
                              height: 0,
                              letterSpacing: -0.30,
                            ),
                          ),
                          SizedBox(height: 6.0.h),
                          const Text(
                            'Find Your Doctor',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontFamily: 'Rubik',
                              fontWeight: FontWeight.w700,
                              height: 0,
                              letterSpacing: -0.30,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Container(
                        width: 60.w,
                        height: 60.h,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(AppImage.onBoardingImageOne),
                            fit: BoxFit.fill,
                          ),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 27.h),
                  Container(
                    width: 335.w,
                    height: 54.h,
                    clipBehavior: Clip.none,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                      shadows: const [
                        BoxShadow(
                          color: Color(0x14000000),
                          blurRadius: 20,
                          offset: Offset(0, 0),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: TextFormField(
// const Text(
//                         'Search..... ',
//                         style: TextStyle(
//                           color: Color(0xFF677294),
//                           fontSize: 15,
//                           fontFamily: 'Rubik',
//                           fontWeight: FontWeight.w400,
//                           height: 0,
//                           letterSpacing: -0.30,
//                         ),
//                       ),

                        ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
