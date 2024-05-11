import 'package:doctor/core/constant/color.dart';
import 'package:doctor/core/constant/image.dart';
import 'package:doctor/core/core/imports/export_path.dart';
import 'package:doctor/core/widgets/custom_scaffold.dart';
import 'package:doctor/features/doctor_appointment/controller/doctor_appointment.dart';
import 'package:doctor/features/doctor_appointment/view/clander.dart';
import 'package:doctor/features/doctor_appointment/view/dialog.dart';
import 'package:doctor/features/doctor_details_screen/view/doctor_details_screen.dart';
import 'package:doctor/features/doctor_select_time/controller/find_doctor.dart';
import 'package:doctor/features/home/view/screens/background.dart';
import 'package:doctor/features/onboarding/view/widgets/onboarding/custombutton.dart';
import 'package:get/get.dart';

// DoctorAppointmentScreen2
// doctor_appointment_screen2
class DoctorAppointmentScreen2 extends GetView<DoctorAppointmentControllerImp> {
  const DoctorAppointmentScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(DoctorAppointmentControllerImp());
    return CustomScaffold(
      body: Background(
        child: SingleChildScrollView(
          child: GetBuilder<DoctorAppointmentControllerImp>(
              init: DoctorAppointmentControllerImp(),
              initState: (state) => {},
              builder: (kcontext) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CustomAppBar(
                        text: 'Appointment 2',
                      ),
                      SizedBox(height: 24.h),
                      SizedBox(
                        height: 680.h,
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const KDateRangePicker(flash: false),
                              SizedBox(height: 38.h),
                              const TimeLineWidget(
                                title: 'Available Time',
                                time: '02:00\nPM',
                                availableTime: true,
                              ),
                              SizedBox(height: 38.h),
                              const TimeLineWidget(
                                title: 'Reminder Me Before',
                                time: '40\nMinit',
                                availableTime: false,
                              ),
                              SizedBox(height: 40.h),
                              Center(
                                child: CustomButton(
                                  onPressed: () {
                                    showDialog(
                                        context: context,
                                        builder: (kcontext) =>
                                            const Thankyouscreen());
                                  },
                                  color: AppColor.green,
                                  text: 'Confirm',
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 126.w, vertical: 18.h),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                );
              }),
        ),
      ),
    );
  }
}

class BookDoctorCard extends StatelessWidget {
  const BookDoctorCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 18.h),
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
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
                      borderRadius: BorderRadius.circular(8)),
                ),
              ),
              SizedBox(width: 8.w),
              const DetailsDoctorWidget()
            ],
          ),
        ],
      ),
    );
  }
}

class TimeLineWidget extends GetView<SelectTimeDoctorControllerImp> {
  const TimeLineWidget({
    super.key,
    required this.title,
    required this.time,
    required this.availableTime,
  });
  final String title;
  final String time;
  final bool availableTime;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SelectTimeDoctorControllerImp>(
      init: SelectTimeDoctorControllerImp(),
      initState: (_) {},
      builder: (_) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: Color(0xFF333333),
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 26.h),
            SizedBox(
              height: 56.h,
              child: ListView.separated(
                  itemCount: controller.daysOfWeek.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (kcontext, index) => SizedBox(width: 8.w),
                  itemBuilder: (kcontext, index) {
                    bool state = index !=
                        (availableTime
                            ? (controller.selectedAvailableTime)
                            : (controller.selectedReminderMeBefore));
                    return InkWell(
                      onTap: () {
                        controller.changeSelected(index, availableTime);
                      },
                      child: Container(
                        width: 60.sp,
                        height: 60.sp,
                        decoration: ShapeDecoration(
                          color: state
                              ? const Color(0x140EBE7F)
                              : const Color(0xFF0EBE7F),
                          shape: const OvalBorder(),
                        ),
                        padding: const EdgeInsets.all(10),
                        child: Center(
                          child: Text(
                            time,
                            textAlign: TextAlign.center,
                            style: state
                                ? const TextStyle(
                                    color: Color(0xFF0EBE7E),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                  )
                                : const TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ],
        );
      },
    );
  }
}
