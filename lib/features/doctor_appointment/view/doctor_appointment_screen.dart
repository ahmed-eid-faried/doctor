import 'package:doctor/core/constant/color.dart';
import 'package:doctor/core/constant/image.dart';
import 'package:doctor/core/core/imports/export_path.dart';
import 'package:doctor/core/widgets/custom_scaffold.dart';
import 'package:doctor/core/widgets/text_form_field/text_form_field_custom.dart';
import 'package:doctor/features/doctor_appointment/controller/doctor_appointment.dart';
import 'package:doctor/features/doctor_details_screen/view/doctor_details_screen.dart';
import 'package:doctor/features/home/view/screens/background.dart';
import 'package:doctor/features/onboarding/view/widgets/onboarding/custombutton.dart';
import 'package:get/get.dart';

// DoctorAppointmentScreen
// doctor_appointment_screen
class DoctorAppointmentScreen extends GetView<DoctorAppointmentControllerImp> {
  const DoctorAppointmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(DoctorAppointmentControllerImp());
    return CustomScaffold(
      body: Background(
        child: SingleChildScrollView(
          child: GetBuilder<DoctorAppointmentControllerImp>(
              init: DoctorAppointmentControllerImp(),
              initState: (state) => {},
              builder: (context) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CustomAppBar(
                        text: 'Appointment',
                      ),
                      SizedBox(height: 24.h),
                      SizedBox(
                        height: 680.h,
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const BookDoctorCard(),
                              SizedBox(height: 30.h),
                              const Text(
                                'Appointment For',
                                style: TextStyle(
                                  color: Color(0xFF333333),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(height: 20.h),
                              const TextFormFieldCustom(
                                validate: null,
                                hint: 'Patient Name',
                              ),
                              SizedBox(height: 18.h),
                              const TextFormFieldCustom(
                                validate: null,
                                hint: 'Contact Number',
                              ),
                              SizedBox(height: 30.h),
                              const Text(
                                'Who is this patient?',
                                style: TextStyle(
                                  color: Color(0xFF333333),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(height: 20.h),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  InkWell(
                                    onTap: () {},
                                    child: Container(
                                      width: 100.w,
                                      height: 125.h,
                                      margin: const EdgeInsets.all(4),
                                      decoration: ShapeDecoration(
                                        color: const Color(0x330EBE7F),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(6)),
                                      ),
                                      child: Center(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Icon(
                                              Icons.add,
                                              size: 30.sp,
                                              color: const Color(0xFF0EBE7F),
                                            ),
                                            const Text(
                                              'Add',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Color(0xFF0EBE7F),
                                                fontSize: 18,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 210.w,
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        children: List.generate(
                                            10,
                                            (index) => Column(
                                                  children: [
                                                    Container(
                                                      width: 100.w,
                                                      height: 125.h,
                                                      margin:
                                                          const EdgeInsets.all(
                                                              4),
                                                      decoration:
                                                          ShapeDecoration(
                                                        image:
                                                            const DecorationImage(
                                                          image: AssetImage(
                                                              AppImage.man),
                                                          fit: BoxFit.fill,
                                                        ),
                                                        shape:
                                                            RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            6)),
                                                      ),
                                                    ),
                                                    Text(
                                                      'My Self $index',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: const TextStyle(
                                                        color:
                                                            Color(0xFF677294),
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    )
                                                  ],
                                                )),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(height: 24.h),
                              Center(
                                child: CustomButton(
                                  onPressed: () {},
                                  color: AppColor.green,
                                  text: 'Next',
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
        // mainAxisAlignment: MainAxisAlignment.center,
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
