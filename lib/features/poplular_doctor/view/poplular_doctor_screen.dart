import 'package:doctor/core/core/imports/export_path.dart';
import 'package:doctor/core/widgets/rating_custom/rating_custom.dart';
import 'package:doctor/features/doctor_select_time/controller/find_doctor.dart';
import 'package:doctor/features/doctor_select_time/view/doctor_select_time.dart';
import 'package:doctor/features/find_doctors_screen/view/find_doctors_screen.dart';
import 'package:doctor/features/onboarding/view/widgets/onboarding/custombutton.dart';
import 'package:flutter/material.dart';

import 'package:doctor/core/constant/color.dart';
import 'package:doctor/core/constant/fonts.dart';
import 'package:doctor/core/constant/image.dart';
import 'package:doctor/core/core/utils/constants/svg.dart';
import 'package:doctor/core/core/utils/values_manager.dart';
import 'package:doctor/core/custom/basic/elevated_button.dart';
import 'package:doctor/core/widgets/appbar/custom_app_bar.dart';
import 'package:doctor/core/widgets/custom_scaffold.dart';
import 'package:doctor/core/widgets/icon_button/icon_button.dart';
import 'package:doctor/core/widgets/svg_pic/svg_pic.dart';
import 'package:doctor/features/find_doctors_screen/controller/find_doctor.dart';
import 'package:doctor/features/home/view/screens/background.dart';
import 'package:doctor/features/home/view/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class PoplularDoctor extends GetView<SelectTimeDoctorControllerImp> {
  const PoplularDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SelectTimeDoctorControllerImp());

    return CustomScaffold(
      body: Background(
        child: SingleChildScrollView(
          child: GetBuilder<SelectTimeDoctorControllerImp>(
              init: SelectTimeDoctorControllerImp(),
              initState: (state) => {},
              builder: (context) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CustomAppBar(text: ''),
                      const Text('Popular Doctor',
                          style: AppFontStyle.grey18w500),
                      const SizedBox(height: 22),
                      SizedBox(
                        height: 200.h,
                        child: ListView.builder(
                            itemCount: 10,
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) =>
                                const CardPopularDoctorWidget()),
                      ),
                      const SizedBox(height: 22),
                      const Text('Category', style: AppFontStyle.grey18w500),
                      const SizedBox(height: 16),
                      SizedBox(
                        height: 400.h,
                        child: ListView.builder(
                            itemCount: 10,
                            shrinkWrap: true,
                            padding: const EdgeInsets.all(0),
                            itemBuilder: (context, index) =>
                                const CardCategoryDoctorWidget()),
                      ),
                    ],
                  ),
                );
              }),
        ),
      ),
    );
  }
}

class CardCategoryDoctorWidget extends StatelessWidget {
  const CardCategoryDoctorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335.w,
      height: 104.h,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(vertical: 8),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        shadows: const [
          BoxShadow(
            color: Color(0x14000000),
            blurRadius: 20,
            offset: Offset(0, 0),
            spreadRadius: 0,
          )
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 82.sp,
            height: 82.sp,
            decoration: ShapeDecoration(
              image: const DecorationImage(
                image: AssetImage(AppImage.doctor),
                fit: BoxFit.fill,
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
            ),
          ),
          SizedBox(width: 4.w),
          const DetailsDoctorWidget()
        ],
      ),
    );
  }
}

class DetailsDoctorWidget extends StatelessWidget {
  const DetailsDoctorWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Text('Dr. Shruti Kedia', style: AppFontStyle.grey16w500),
            SizedBox(width: 100.w),
            const LikeDoctorWidget(size: 15)
          ],
        ),
        SizedBox(height: 4.h),
        const Text('Upasana Dental Clinic,\n salt lake',
            maxLines: 2, style: AppFontStyle.liteGrey12w300),
        SizedBox(height: 4.h),
        SizedBox(
          width: 222.w,
          child: const Row(
            children: [
              RatingBarCustom(
                averageRating: "3.8",
                itemSize: 10,
              ),
              Spacer(),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: '3.8  ',
                      style: TextStyle(
                        color: Color(0xFF333333),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    TextSpan(text: '(', style: AppFontStyle.rgrey16w400),
                    TextSpan(
                        text: '2475 views', style: AppFontStyle.rgrey12w400),
                    TextSpan(text: ')', style: AppFontStyle.rgrey16w400),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class CardPopularDoctorWidget extends StatelessWidget {
  const CardPopularDoctorWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 136.w,
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 136.w,
            height: 131.h,
            decoration: const ShapeDecoration(
              image: DecorationImage(
                image: AssetImage(AppImage.doctor),
                fit: BoxFit.fill,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                  bottomLeft: Radius.circular(2),
                  bottomRight: Radius.circular(2),
                ),
              ),
            ),
          ),
          const SizedBox(height: 8),
          const Text('Dr. Truluck Nik', style: AppFontStyle.black14w500),
          const SizedBox(height: 4),
          const Text('Medicine Specialist', style: AppFontStyle.rgrey10w300),
          const SizedBox(height: 4),
          const RatingBarCustom(
            averageRating: "3.5",
            itemSize: 10,
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          const SizedBox(height: 14),
        ],
      ),
    );
  }
}
