import 'package:doctor/core/constant/color.dart';
import 'package:doctor/core/constant/image.dart';
import 'package:doctor/core/core/utils/constants/svg.dart';
import 'package:doctor/core/core/utils/font_manager.dart';
import 'package:doctor/core/custom/basic/container.dart';
import 'package:doctor/core/widgets/rating_custom/rating_custom.dart';
import 'package:doctor/core/widgets/svg_pic/svg_pic.dart';
import 'package:doctor/core/widgets/text_form_field/text_form_field_custom.dart';
import 'package:doctor/features/home/controller/home.dart';
import 'package:doctor/features/home/view/screens/background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class HomeViewScreen extends StatelessWidget {
  const HomeViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HomeControllerImp controller = Get.put(HomeControllerImp());

    return Background(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppBarHome(controller: controller),
          SizedBox(
            height: 540.h,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 20.h),
                  const LiveDoctorsWidget(),
                  SizedBox(height: 20.h),
                  const CategoriesWidget(),
                  SizedBox(height: 20.h),
                  HomeSectionsWidget(
                    title: 'Popular Doctor',
                    onTap: controller.seeAllPopular(),
                    child: const PopularDoctorHome(),
                  ),
                  SizedBox(height: 30.h),
                  HomeSectionsWidget(
                    title: "Feature Doctor",
                    onTap: controller.seeAllFeature(),
                    child: const FeatureDoctorHome(),
                  ),
                  SizedBox(height: 30.h),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AppBarHome extends StatelessWidget {
  const AppBarHome({
    super.key,
    required this.controller,
  });

  final HomeControllerImp controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375.w,
      height: 190.h,
      clipBehavior: Clip.none,
      child: Stack(
        children: [
          Positioned(
            child: Container(
              width: 375.w,
              height: 156.h,
              decoration: const ShapeDecoration(
                gradient: LinearGradient(
                  begin: Alignment(0.98, -0.19),
                  end: Alignment(-0.98, 0.19),
                  colors: [Color(0xFF0EBE7E), Color(0xFF07D9AD)],
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
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
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Container(
                      width: 60.w,
                      height: 60.h,
                      clipBehavior: Clip.none,
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
                CustomSearchBar(
                    title: "Search",
                    search: true,
                    controller: controller.textEditingController),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    super.key,
    this.controller,
    required this.title,
    this.search = false,
  });

  // final HomeControllerImp controller;
  final TextEditingController? controller;
  final String title;
  final bool search;
  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: TextFormFieldCustom(
        border: InputBorder.none,
        controller: controller,
        suffix: const Icon(
          Icons.close,
          color: Color(0xFF677294),
          size: 24,
        ),
        //  SvgPictureCustom(AppSvg.cancel),
        hint: search ? "$title..... " : title,
        prefixIcon: const SvgPictureCustom(AppSvg.search),
        //  Icon(Icons.search),
        prefix: true,
        validate: (p0) => null,
        style: TextStyle(
          color: const Color(0xFF677294),
          fontSize: 15.sp,
          fontFamily: 'Rubik',
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}

class HomeSectionsWidget extends StatelessWidget {
  const HomeSectionsWidget(
      {super.key,
      required this.title,
      required this.child,
      required this.onTap,
      this.horizontalPadding = 20});
  final String title;
  final Widget child;
  final void Function()? onTap;
  final double horizontalPadding;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Color(0xFF333333),
                  fontSize: 18,
                  fontFamily: 'Rubik',
                  fontWeight: FontWeight.w500,
                  height: 0,
                  letterSpacing: -0.30,
                ),
              ),
              const Spacer(),
              InkWell(
                onTap: onTap,
                child: const Text(
                  'See all  >',
                  style: TextStyle(
                    color: Color(0xFF677294),
                    fontSize: 12,
                    fontFamily: 'Rubik',
                    fontWeight: FontWeight.w300,
                    height: 0,
                    letterSpacing: -0.30,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 18.h),
          child
        ],
      ),
    );
  }
}

class PopularDoctorHome extends StatelessWidget {
  const PopularDoctorHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 272.h,
      child: ListView.builder(
          itemCount: 10,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Container(
                width: 190.w,
                height: 272.h,
                margin: const EdgeInsets.all(4),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  shadows: const [
                    BoxShadow(
                      color: Color(0x14000000),
                      blurRadius: 40,
                      offset: Offset(0, 0),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Container(
                  padding: const EdgeInsets.all(4),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 190.w,
                        height: 180.h,
                        decoration: const ShapeDecoration(
                          image: DecorationImage(
                            image: AssetImage(AppImage.doctor),
                            fit: BoxFit.cover,
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12))),
                        ),
                      ),
                      SizedBox(height: 8.h),
                      const Text(
                        'Dr. Fillerup Grab',
                        style: TextStyle(
                          color: Color(0xFF333333),
                          fontSize: 18,
                          fontFamily: 'Rubik',
                          fontWeight: FontWeight.w500,
                          height: 0,
                          letterSpacing: -0.30,
                        ),
                      ),
                      SizedBox(height: 4.h),
                      const Text(
                        'Medicine Specialist',
                        style: TextStyle(
                          color: Color(0xCC677294),
                          fontSize: 12,
                          fontFamily: 'Rubik',
                          fontWeight: FontWeight.w400,
                          height: 0,
                          letterSpacing: -0.30,
                        ),
                      ),
                      SizedBox(height: 6.h),
                      const RatingBarCustom(
                          averageRating: "3.5",
                          mainAxisAlignment: MainAxisAlignment.center,
                          showText: false,
                          itemSize: 16),
                      SizedBox(height: 8.h),
                    ],
                  ),
                ),
              )),
    );
  }
}

class FeatureDoctorHome extends StatelessWidget {
  const FeatureDoctorHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: ListView.builder(
          itemCount: 10,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Container(
                width: 96,
                height: 130,
                margin: const EdgeInsets.all(4),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6)),
                  shadows: const [
                    BoxShadow(
                      color: Color(0x0F000000),
                      blurRadius: 20,
                      offset: Offset(0, -1),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Container(
                  padding: const EdgeInsets.all(4),
                  child: const Column(
                    children: [
                      Row(
                        children: [
                          1 == 1
                              ? SvgPictureCustom(
                                  AppSvg.fav,
                                  width: 16,
                                  height: 16,
                                )
                              : SvgPictureCustom(
                                  AppSvg.favfull,
                                  width: 16,
                                  height: 16,
                                ),
                          Spacer(),
                          SvgPictureCustom(
                            AppSvg.star,
                            width: 16,
                            height: 16,
                          ),
                          SizedBox(width: 6),
                          Text(
                            '3.7',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                              fontFamily: 'Rubik',
                              fontWeight: FontWeight.w500,
                              height: 0,
                              letterSpacing: -0.30,
                            ),
                          ),
                          //     style: AppFontStyle.black12w400()),
                        ],
                      ),
                      SizedBox(height: 8),
                      SizedBox(
                        width: 54,
                        height: 54,
                        child: CircleAvatar(
                            maxRadius: 54 / 2,
                            backgroundImage:
                                AssetImage(AppImage.onBoardingImageOne)),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Dr. Crick',
                        style: TextStyle(
                          color: Color(0xFF333333),
                          fontSize: 12,
                          fontFamily: 'Rubik',
                          fontWeight: FontWeight.w500,
                          height: 0,
                          letterSpacing: -0.30,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: '\$ ',
                              style: TextStyle(
                                color: Color(0xFF0EBE7E),
                                fontSize: 9,
                                fontFamily: 'Rubik',
                                fontWeight: FontWeight.w500,
                                height: 0,
                                letterSpacing: -0.30,
                              ),
                            ),
                            TextSpan(
                              text: '25.00/ hours',
                              style: TextStyle(
                                color: Color(0xFF677294),
                                fontSize: 9,
                                fontFamily: 'Rubik',
                                fontWeight: FontWeight.w300,
                                height: 0,
                                letterSpacing: -0.30,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )),
    );
  }
}

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90.h,
      child: ListView.builder(
        itemCount: 10,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return const CategoryWidget();
        },
      ),
    );
  }
}

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 90,
      clipBehavior:
          Clip.antiAlias, // Clip children that extend beyond the bounds
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment(0.59, -0.81),
          end: Alignment(-0.59, 0.81),
          colors: [Color(0xFF2753F3), Color(0xFF765AFC)],
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              width: 80,
              height: 90,
              clipBehavior: Clip.hardEdge,
              decoration: ShapeDecoration(
                gradient: const LinearGradient(
                  begin: Alignment(0.59, -0.81),
                  end: Alignment(-0.59, 0.81),
                  colors: [Color(0xFF2753F3), Color(0xFF765AFC)],
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
              ),
              child: Center(
                child: SvgPicture.asset(
                  AppSvg.cat,
                  width: 30,
                  height: 30,
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: 39,
            child: Container(
              width: 80,
              height: 80,
              clipBehavior: Clip.hardEdge,
              decoration: ShapeDecoration(
                color: Colors.white.withOpacity(0.4),
                shape: const OvalBorder(),
              ),
            ),
          ),
          Positioned(
            left: 46,
            top: 0,
            child: Container(
              width: 67,
              height: 67,
              clipBehavior: Clip.hardEdge,
              decoration: ShapeDecoration(
                color: Colors.white.withOpacity(0.06),
                shape: const OvalBorder(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class LiveDoctorsWidget extends StatelessWidget {
  const LiveDoctorsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Live Doctors',
              style: TextStyle(
                  fontSize: FontSize.s18,
                  fontWeight: FontWeight.w500,
                  color: AppColor.jet)
              // AppFontStyle.jet18w500()
              ),
          SizedBox(height: 20.h),
          SizedBox(
            height: 168.h,
            child: ListView.builder(
              itemCount: 10,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return const LiveDoctorWidget();
              },
            ),
          ),
        ],
      ),
    );
  }
}

class LiveDoctorWidget extends StatelessWidget {
  const LiveDoctorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return KContainer(
      width: 116.w,
      height: 168.h,
      onTap: () {},
      margin: const EdgeInsets.symmetric(horizontal: 2),
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              width: 116.w,
              height: 168.h,
              decoration: ShapeDecoration(
                image: const DecorationImage(
                  image: AssetImage(AppImage.doctor),
                  fit: BoxFit.cover,
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6)),
                shadows: const [
                  BoxShadow(
                    color: Color(0x0F000000),
                    blurRadius: 20,
                    offset: Offset(0, -1),
                    spreadRadius: 0,
                  )
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              width: 116.w,
              height: 168.h,
              decoration: ShapeDecoration(
                color: Colors.black.withOpacity(0.2),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6)),
              ),
              child: Center(
                child: SvgPicture.asset(
                  AppSvg.play,
                  height: 30,
                  width: 30,
                ),
              ),
            ),
          ),
          Positioned(
            right: 12,
            top: 12,
            child: Container(
              width: 40,
              height: 18,
              decoration: ShapeDecoration(
                color: const Color(0xFFF9002F),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 5.60,
                    height: 5.60,
                    decoration: const ShapeDecoration(
                      color: Colors.white,
                      shape: OvalBorder(),
                    ),
                  ),
                  const Text('LIVE',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: FontSize.s7,
                          color: AppColor.white)
                      //  AppFontStyle.white7w400()
                      ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
