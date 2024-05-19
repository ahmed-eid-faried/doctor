import 'package:doctor/core/core/imports/export_path.dart';
import 'package:doctor/core/widgets/custom_scaffold.dart';
import 'package:doctor/features/find_doctors_screen/controller/find_doctor.dart';
import 'package:doctor/features/home/view/screens/background.dart';
import 'package:get/get.dart';

class PrivacyPolicyScreen extends GetView<FindDoctorControllerImp> {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(FindDoctorControllerImp());
    return CustomScaffold(
      body: Background(
        appBar: const CustomAppBar(
          text: 'Privacy policy',
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Doctor Hunt Apps Privacy Policy',
              style: TextStyle(
                color: const Color(0xFF677294),
                fontSize: 18.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 12.h),
            SizedBox(
              width: 325.w,
              child: Text(
                'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words believable. It is a long established fact that reader will distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a moreIt is a long established fact that reader will distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more ',
                style: TextStyle(
                  color: const Color(0xCC959CB4),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(height: 20.h),
            ListView.builder(
              itemCount: list.length,
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) => Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 8.sp,
                    height: 8.sp,
                    margin: const EdgeInsets.all(8),
                    decoration: const ShapeDecoration(
                      color: Color(0xFF0EBE7F),
                      shape: OvalBorder(),
                    ),
                  ),
                  SizedBox(
                    width: 304.w,
                    child: Text(
                      list[index],
                      style: TextStyle(
                        color: const Color(0xCC959CB4),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            if (list.isNotEmpty) SizedBox(height: 20.h),
            SizedBox(
              width: 335.w,
              child: Text(
                'It is a long established fact that reader distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a moreIt is a long established.',
                style: TextStyle(
                  color: const Color(0xCC959CB4),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

List<String> list = [
  "The standard chunk of lorem Ipsum used since  1500s is reproduced below for those interested.",
  'Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum. The point of using.',
  'The point of using Lorem Ipsum is that it has a moreIt is a long established fact that reader will distracted.',
];
