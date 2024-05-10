import 'package:doctor/core/constant/color.dart';
import 'package:doctor/core/constant/fonts.dart';
import 'package:doctor/core/constant/image.dart';
import 'package:doctor/core/core/imports/export_path.dart';
import 'package:doctor/core/widgets/custom_scaffold.dart';
import 'package:doctor/core/widgets/rating_custom/rating_custom.dart';
import 'package:doctor/features/doctor_details_screen/controller/doctor_details_screen.dart';
import 'package:doctor/features/find_doctors_screen/view/find_doctors_screen.dart';
import 'package:doctor/features/home/view/screens/background.dart';
import 'package:doctor/features/onboarding/view/widgets/onboarding/custombutton.dart';
import 'package:get/get.dart';

// DoctorDetailsScreen
// doctor_details_screen
class DoctorDetailsScreen extends GetView<DoctorDetailsControllerImp> {
  const DoctorDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(DoctorDetailsControllerImp());
    return CustomScaffold(
      body: Background(
        child: SingleChildScrollView(
          child: GetBuilder<DoctorDetailsControllerImp>(
              init: DoctorDetailsControllerImp(),
              initState: (state) => {},
              builder: (context) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CustomAppBar(
                        text: 'Doctor Details',
                      ),
                      SizedBox(height: 24.h),
                      SizedBox(
                        height: 680.h,
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const BookDoctorCard(),
                              SizedBox(height: 24.h),
                              const Services(),
                              SizedBox(height: 30.h),
                              const Text(
                                'Services',
                                style: TextStyle(
                                  color: Color(0xFF333333),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                height: 108.h,
                                child: ListView.builder(
                                  itemCount: 3,
                                  shrinkWrap: true,
                                  padding: EdgeInsets.zero,
                                  itemBuilder: (context, index) => ServiceItem(
                                    index: index + 1,
                                    text:
                                        "Patient care should be the number one priority.",
                                  ),
                                ),
                              ),
                              const MapCard(),
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

class Services extends StatelessWidget {
  const Services({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 84.h,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
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
      child: const Row(
        children: [
          ServiceDetailsCard(
            title: 'Runing',
            numbers: 100,
          ),
          ServiceDetailsCard(
            title: 'Ongoing',
            numbers: 500,
          ),
          ServiceDetailsCard(
            title: 'Patient',
            numbers: 700,
          ),
        ],
      ),
    );
  }
}

class MapCard extends StatelessWidget {
  const MapCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335.w,
      height: 210.h,
      padding: const EdgeInsets.all(8),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x14000000),
            blurRadius: 30,
            offset: Offset(0, 0),
            spreadRadius: 0,
          )
        ],
      ),
      child: Container(
        width: 318,
        height: 190.06,
        decoration: ShapeDecoration(
          image: const DecorationImage(
            image: AssetImage(AppImage.map),
            fit: BoxFit.cover,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}

class ServiceItem extends StatelessWidget {
  const ServiceItem({
    super.key,
    required this.index,
    required this.text,
  });
  final int index;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: '$index.',
              style: const TextStyle(
                color: Color(0xFF0EBE7F),
                fontSize: 13,
                fontWeight: FontWeight.w500,
              ),
            ),
            TextSpan(
              text: '   $text',
              style: const TextStyle(
                color: Color(0xE5677294),
                fontSize: 13,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ServiceDetailsCard extends StatelessWidget {
  const ServiceDetailsCard({
    super.key,
    required this.numbers,
    required this.title,
  });
  final int numbers;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 90.w,
      // height: 64.h,
      margin: const EdgeInsets.all(8),
      padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 12.h),
      decoration: ShapeDecoration(
        color: const Color(0xFFCACACA).withOpacity(0.12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Column(
        children: [
          const Text(
            '700',
            style: TextStyle(
              color: Color(0xFF333333),
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 4.h),
          const Text(
            'Patient',
            style: TextStyle(
              color: Color(0xFF677294),
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
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
          SizedBox(height: 15.h),
          CustomButton(
            onPressed: () {},
            color: AppColor.green,
            text: "Book Now",
            padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 8),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
          ),
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
            SizedBox(width: 60.w),
            const LikeDoctorWidget(size: 15)
          ],
        ),
        SizedBox(height: 4.h),
        const Text('Upasana Dental Clinic,\n salt lake',
            maxLines: 2, style: AppFontStyle.liteGrey12w300),
        SizedBox(height: 4.h),
        SizedBox(
          width: 180.w,
          child: const Row(
            children: [
              RatingBarCustom(
                averageRating: "3.8",
                itemSize: 10,
              ),
              Spacer(),
              // SizedBox(height: 4),
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
                        letterSpacing: -0.30,
                      ),
                    ),
                    TextSpan(
                      text: '25.00 / hours',
                      style: TextStyle(
                        color: Color(0xFF677294),
                        fontSize: 9,
                        fontFamily: 'Rubik',
                        fontWeight: FontWeight.w300,
                        letterSpacing: -0.30,
                      ),
                    ),
                  ],
                ),
              )

              // Text.rich(
              //   TextSpan(
              //     children: [
              //       TextSpan(
              //         text: '3.8  ',
              //         style: TextStyle(
              //           color: Color(0xFF333333),
              //           fontSize: 16,
              //           fontWeight: FontWeight.w500,
              //         ),
              //       ),
              //       TextSpan(text: '(', style: AppFontStyle.rgrey16w400),
              //       TextSpan(
              //           text: '2475 views', style: AppFontStyle.rgrey12w400),
              //       TextSpan(text: ')', style: AppFontStyle.rgrey16w400),
              //     ],
              //   ),
              // )
            ],
          ),
        ),
      ],
    );
  }
}
