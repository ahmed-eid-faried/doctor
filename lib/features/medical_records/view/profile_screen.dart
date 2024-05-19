import 'package:doctor/core/constant/color.dart';
import 'package:doctor/core/core/imports/export_path.dart';
import 'package:doctor/core/widgets/custom_scaffold.dart';
import 'package:doctor/core/widgets/svg_pic/svg_pic.dart';
import 'package:doctor/core/widgets/text_form_field/text_form_field_custom.dart';
import 'package:doctor/features/find_doctors_screen/controller/find_doctor.dart';
import 'package:doctor/features/home/view/screens/background.dart';
import 'package:doctor/features/medical_records/view/profile_editor_screen.dart';
import 'package:doctor/features/onboarding/view/widgets/onboarding/custombutton.dart';
import 'package:get/get.dart';

class ProfileScreen extends GetView<FindDoctorControllerImp> {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(FindDoctorControllerImp());
    return CustomScaffold(
      body: Background(
        appBar: const CustomAppBar(
          text: 'Profile',
          textColor: AppColor.white,
        ),
        profile: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 357.h,
              decoration: const ShapeDecoration(
                color: Color(0xFF0EBE7F),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
              ),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              height: 249.h,
              child: Column(
                children: [
                  Text(
                    'Set up your profile',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 10.h),
                  SizedBox(
                    width: 296.w,
                    child: Text(
                      'Update your profile to connect your doctor with better impression.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(height: 22.h),
                  CircleAvatar(
                    radius: 130.sp / 2,
                    backgroundImage: const CachedNetworkImageProvider(
                      "https://images.pexels.com/photos/1043474/pexels-photo-1043474.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 12.h),
            SizedBox(
              height: 380.h,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Personal information',
                    style: TextStyle(
                      color: const Color(0xFF333333),
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 12.h),
                  const TextFormFieldCustom(
                    validate: null,
                    label: 'Name',
                  ),
                  SizedBox(height: 12.h),
                  TextFormFieldCustom(
                    validate: null,
                    label: 'Contact Number',
                    suffix: InkWell(
                      onTap: () {
                        Go.navigatorWidget(
                            context, const ProfileEditorScreen());
                      },
                      child: Padding(
                        padding: EdgeInsets.all(12.sp),
                        child: const SvgPictureCustom(
                          AppSvg.edit,
                          width: 15,
                          height: 15,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 12.h),
                  TextFormFieldCustom(
                    validate: null,
                    label: 'Date of birth',
                    suffix: InkWell(
                      onTap: () {
                        Go.navigatorWidget(
                            context, const ProfileEditorScreen());
                      },
                      child: Padding(
                        padding: EdgeInsets.all(12.sp),
                        child: const SvgPictureCustom(
                          AppSvg.edit,
                          width: 15,
                          height: 15,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 12.h),
                  const TextFormFieldCustom(
                    validate: null,
                    label: 'Location',
                  ),
                  const Spacer(),
                  CustomButton(
                    onPressed: () {},
                    minWidth: 350.w,
                    height: 18.h,
                    color: AppColor.green,
                    padding: EdgeInsets.symmetric(vertical: 18.h),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    child: Text(
                      'Continue',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                      ),
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
