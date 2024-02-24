import 'package:doctor/core/constant/color.dart';
import 'package:doctor/core/constant/fonts.dart';
import 'package:doctor/core/constant/image.dart';
import 'package:doctor/core/core/imports/export_path.dart';
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
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class FindDoctorsScreen extends GetView<FindDoctorControllerImp> {
  const FindDoctorsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(FindDoctorControllerImp());
    return CustomScaffold(
      body: Background(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const CustomAppBar(text: "Find Doctors Screen"),
              SizedBox(height: 34.h),
              const CustomSearchBar(title: "Dentist"),
              SizedBox(height: 20.h),
              const CardsOfDoctorsWidget()
            ],
          ),
        ),
      ),
    );
  }
}

class CardsOfDoctorsWidget extends StatelessWidget {
  const CardsOfDoctorsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600.h,
      child: ListView.builder(
          itemCount: 5,
          shrinkWrap: true,
          physics: const ClampingScrollPhysics(),
          padding: const EdgeInsets.all(0),
          itemBuilder: (context, index) => const CardDoctorWidget()),
    );
  }
}

class CardDoctorWidget extends GetView<FindDoctorControllerImp> {
  const CardDoctorWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335.w,
      height: 170.h,
      margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
      padding: const EdgeInsets.all(18),
      decoration: ShapeDecoration(
        color: AppColor.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        shadows: const [
          BoxShadow(
            color: AppColor.shadowCardBlue,
            blurRadius: 20,
            offset: Offset(0, 0),
            spreadRadius: 0,
          )
        ],
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 92.w,
                height: 87.h,
                decoration: ShapeDecoration(
                  image: const DecorationImage(
                    image: AssetImage(AppImage.doctor),
                    fit: BoxFit.cover,
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4)),
                ),
              ),
              SizedBox(height: 16.h),
              const Text('Next Available', style: AppFontStyle.primary13w400),
              const Text('10:00  AM tomorrow', style: AppFontStyle.grey212w400),
            ],
          ),
          SizedBox(width: 14.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Text('Dr. Shruti Kedia',
                      style: AppFontStyle.textTitle18w500),
                  SizedBox(width: 40.w),
                  const LikeDoctorWidget()
                ],
              ),
              SizedBox(height: 4.h),
              const Text('Tooths Dentist', style: AppFontStyle.primary13w400),
              SizedBox(height: 2.h),
              const Text('7 Years experience ',
                  style: AppFontStyle.liteGrey12w300),
              SizedBox(height: 10.h),
              const Row(
                children: [
                  PointWidget(),
                  SizedBox(width: 4),
                  Text('87%', style: AppFontStyle.liteGrey11w300),
                  SizedBox(width: 8),
                  PointWidget(),
                  SizedBox(width: 4),
                  Text('78 Patient Stories',
                      style: AppFontStyle.liteGrey11w300),
                ],
              ),
              SizedBox(height: 14.h),
              Row(
                children: [
                  SizedBox(width: 80.w),
                  const ElevatedButtonCustom(
                    onPressed: null,
                    colors: AppColor.primaryColor,
                    text: 'Book Now',
                    style: AppFontStyle.white12w500,
                    width: AppSize.s100 * 1.2,
                    height: AppSize.s46,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class LikeDoctorWidget extends StatefulWidget {
  const LikeDoctorWidget({super.key, this.size = AppSize.s24});
  final double size;
  @override
  State<LikeDoctorWidget> createState() => _LikeDoctorWidgetState();
}

class _LikeDoctorWidgetState extends State<LikeDoctorWidget> {
  bool likeState = false;

  changeState() {
    setState(() {
      likeState = !likeState;
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        changeState();
      },
      child: SvgPictureCustom(
        likeState ? AppSvg.like : AppSvg.unlike,
        height: widget.size,
        width: widget.size,
      ),
    );
  }
}

class PointWidget extends StatelessWidget {
  const PointWidget({
    super.key,
    this.r = 5,
  });
  final double r;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 2 * r.sp,
      height: 2 * r.sp,
      decoration: const ShapeDecoration(
        color: AppColor.green,
        shape: OvalBorder(),
      ),
    );
  }
}
