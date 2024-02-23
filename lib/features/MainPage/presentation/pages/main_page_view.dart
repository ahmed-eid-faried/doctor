import 'package:doctor/core/constant/color.dart';
import 'package:doctor/core/custom/basic/container.dart';
import 'package:doctor/features/MainPage/presentation/controller/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class MainPage extends GetView<MainPageControllerImp> {
  const MainPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(MainPageControllerImp());
    return GetBuilder<MainPageControllerImp>(
      builder: (controller) => Scaffold(
        extendBody: true,
        bottomNavigationBar: KContainer(
          width: double.infinity,
          height: 80.h,
          decoration: const ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            shadows: [
              BoxShadow(
                color: Color(0x3F000000),
                blurRadius: 180,
                offset: Offset(0, 4),
                spreadRadius: 0,
              )
            ],
          ),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(
                  pageList.length,
                  (index) => KContainer(
                      onTap: () {
                        controller.changePage(index);
                      },
                      width: 48,
                      height: 48,
                      decoration: ShapeDecoration(
                        color: controller.index == index
                            ? AppColor.green
                            : AppColor.white,
                        shape: const OvalBorder(),
                      ),
                      padding: const EdgeInsets.all(14),
                      child: SvgPicture.asset(
                        pageList[index].svg,
                        width: 20,
                        height: 20,
                        colorFilter: ColorFilter.mode(
                            controller.index == index
                                ? AppColor.white
                                : AppColor.grey,
                            BlendMode.srcIn),
                      )))),
        ),
        body: pageList[controller.index].child,
      ),
    );
  }
}
