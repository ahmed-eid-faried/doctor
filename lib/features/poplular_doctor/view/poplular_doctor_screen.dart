import 'package:doctor/core/widgets/rating_custom/rating_custom.dart';
import 'package:doctor/features/doctor_select_time/controller/find_doctor.dart';
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
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
class DoctorSelectTime extends GetView<SelectTimeDoctorControllerImp> {
  const DoctorSelectTime({super.key});

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
                return Column(
                  children: [
                    const CustomAppBar(text: 'Select Time'),
                    SizedBox(height: 34.h),
                    const CardDoctorSelectedTimeWidget(),
                    SizedBox(height: 24.h),
                    const TimeLineWidget(),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Text(controller.daysOfWeek[0],
                              textAlign: TextAlign.center,
                              style: AppFontStyle.grey16w400),
                          SizedBox(height: 4.h),
                          if (!controller.slotsAvailable)
                            const Text('No slots available',
                                textAlign: TextAlign.center,
                                style: AppFontStyle.litegrey10w300)
                        ],
                      ),
                    ),
                    if (!controller.slotsAvailable)
                      const NoSlotsAvailableWidget(),
                    if (controller.slotsAvailable)
                      Column(
                        children: [
                          SlotsWidget(
                              title: "Afternoon",
                              slots: controller.afternoonSlots),
                          SizedBox(height: 20.h),
                          SlotsWidget(
                              title: "Evening", slots: controller.eveningSlots),
                        ],
                      ),
                  ],
                );
              }),
        ),
      ),
    );
  }
}

class SlotsWidget extends StatefulWidget {
  const SlotsWidget({
    super.key,
    required this.slots,
    required this.title,
  });

  final List<String> slots;
  final String title;

  @override
  State<SlotsWidget> createState() => _SlotsWidgetState();
}

class _SlotsWidgetState extends State<SlotsWidget> {
  int selectedSlot = 0;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SelectTimeDoctorControllerImp>(
        init: SelectTimeDoctorControllerImp(),
        initState: (_) {},
        builder: (controller) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('${widget.title} ${widget.slots.length} slots',
                  style: AppFontStyle.mgrey16w500),
              SizedBox(height: 16.h),
              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: List.generate(widget.slots.length, (index) {
                  bool state = index == selectedSlot;
                  return InkWell(
                    onTap: () {
                      setState(() {
                        selectedSlot = index;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 14, vertical: 12),
                      decoration: ShapeDecoration(
                        color: state
                            ? AppColor.primaryColor
                            : const Color(0x140EBE7F),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6)),
                      ),
                      child: Text(widget.slots[index],
                          textAlign: TextAlign.center,
                          style: state
                              ? AppFontStyle.white13w500
                              : AppFontStyle.green13w500),
                    ),
                  );
                }),
              )
            ],
          );
        });
  }
}

class NoSlotsAvailableWidget extends GetView<SelectTimeDoctorControllerImp> {
  const NoSlotsAvailableWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 24.h),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 34),
          child: CustomButton(
              onPressed: () {
                controller.nextAvailability();
              },
              minWidth: double.infinity,
              padding: const EdgeInsets.all(16),
              child: const Text('Next availability on wed, 24 Feb',
                  textAlign: TextAlign.center,
                  style: AppFontStyle.white18w500)),
        ),
        SizedBox(height: 14.h),
        const Text('OR', style: AppFontStyle.liteGrey14w400),
        SizedBox(height: 14.h),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 34),
          child: CustomButton(
              onPressed: () {
                controller.contactClinic();
              },
              minWidth: double.infinity,
              padding: const EdgeInsets.all(16),
              color: AppColor.white,
              shape: ContinuousRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                  side: const BorderSide(width: 1, color: AppColor.darkGreen)),
              child: const Text('Contact Clinic',
                  textAlign: TextAlign.center,
                  style: AppFontStyle.green18w500)),
        ),
      ],
    );
  }
}

class TimeLineWidget extends GetView<SelectTimeDoctorControllerImp> {
  const TimeLineWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SelectTimeDoctorControllerImp>(
      init: SelectTimeDoctorControllerImp(),
      initState: (_) {},
      builder: (_) {
        return SizedBox(
          height: 56.h,
          child: ListView.builder(
              itemCount: controller.daysOfWeek.length,
              shrinkWrap: true,
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                bool state = index != controller.selectedDay;
                return InkWell(
                  onTap: () {
                    controller.changeDay(index);
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 8.w),
                    padding: const EdgeInsets.all(10),
                    decoration: ShapeDecoration(
                      color: state ? null : const Color(0xFF0EBE7F),
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            width: 1, color: Color(0x19677294)),
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    child: Column(
                      children: [
                        Text(controller.daysOfWeek[index],
                            textAlign: TextAlign.center,
                            style: state
                                ? AppFontStyle.grey16w400
                                : AppFontStyle.white16w400),
                        SizedBox(height: 4.h),
                        Text('No slots available',
                            textAlign: TextAlign.center,
                            style: state
                                ? AppFontStyle.litegrey10w300
                                : AppFontStyle.white10w300)
                      ],
                    ),
                  ),
                );
              }),
        );
      },
    );
  }
}

class CardDoctorSelectedTimeWidget extends StatelessWidget {
  const CardDoctorSelectedTimeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335.w,
      height: 88.h,
      padding: const EdgeInsets.all(10),
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 71.w,
            height: 68.h,
            decoration: ShapeDecoration(
              image: const DecorationImage(
                image: AssetImage(AppImage.doctor),
                fit: BoxFit.fill,
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4)),
            ),
          ),
          const SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Text('Dr. Shruti Kedia',
                      style: AppFontStyle.grey16w500),
                  SizedBox(width: 110.w),
                  const LikeDoctorWidget(size: 15)
                ],
              ),
              SizedBox(height: 4.h),
              const Text('Upasana Dental Clinic, salt lake',
                  style: AppFontStyle.liteGrey12w300),
              SizedBox(height: 4.h),
              const RatingBarCustom(
                averageRating: "3.8",
                showText: false,
                itemSize: 10,
              ),
            ],
          )
        ],
      ),
    );
  }
}
