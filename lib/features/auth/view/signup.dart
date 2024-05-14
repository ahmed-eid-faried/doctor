import 'package:doctor/core/constant/color.dart';
import 'package:doctor/core/core/imports/export_path.dart';
import 'package:doctor/core/custom/basic/text_form_field.dart';
import 'package:doctor/core/widgets/custom_scaffold.dart';
import 'package:doctor/core/widgets/svg_pic/svg_pic.dart';
import 'package:doctor/features/find_doctors_screen/controller/find_doctor.dart';
import 'package:doctor/features/home/view/screens/background.dart';
import 'package:doctor/features/onboarding/view/widgets/onboarding/custombutton.dart';
import 'package:get/get.dart';

class SignUpScreen extends GetView<FindDoctorControllerImp> {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(FindDoctorControllerImp());
    return CustomScaffold(
      body: Background(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 110.h),
                Text(
                  'Join us to start searching',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 16.h),
                Text(
                  'You can search c ourse, apply course and find\n scholarship for abroad studies',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: const Color(0xFF677294),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 68.h),
                Row(
                  children: [
                    const Expanded(
                        child: CustomAuthButton(
                      title: 'Google',
                      svg: AppSvg.google,
                    )),
                    SizedBox(width: 15.w),
                    const Expanded(
                        child: CustomAuthButton(
                      title: 'Facebook',
                      svg: AppSvg.facebook,
                    )),
                  ],
                ),
                SizedBox(height: 34.h),
                const TextFormFieldCustom(
                  validate: null,
                  label: "Name",
                ),
                SizedBox(height: 18.h),
                const TextFormFieldCustom(
                  validate: null,
                  label: 'Email',
                ),
                SizedBox(height: 18.h),
                const PasswordWidget(
                  title: 'Password',
                  controller: null,
                ),
                SizedBox(height: 14.h),
                Row(
                  children: [
                    Container(
                      width: 16.sp,
                      height: 16.sp,
                      decoration: const ShapeDecoration(
                        color: Color(0x7F677294),
                        shape: OvalBorder(),
                      ),
                    ),
                    SizedBox(width: 12.w),
                    Text(
                      'I agree with the Terms of Service & Privacy Policy',
                      style: TextStyle(
                        color: const Color(0xFF677294),
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30.h),
                CustomButton(
                  onPressed: () {},
                  minWidth: 64.w,
                  height: 18.h,
                  color: AppColor.green,
                  padding:
                      EdgeInsets.symmetric(horizontal: 126.w, vertical: 18.h),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  child: Text(
                    'Sign up',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(height: 50.h),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Have an account? Log in',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: const Color(0xFF0EBE7F),
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(height: 10.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomAuthButton extends StatelessWidget {
  const CustomAuthButton({
    super.key,
    required this.title,
    required this.svg,
  });
  final String title;
  final String svg;

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      onPressed: () {},
      minWidth: 160.w,
      height: 18.h,
      color: AppColor.white,
      textColor: AppColor.grey,
      padding: EdgeInsets.symmetric(vertical: 18.h),
      shape: RoundedRectangleBorder(
          side: const BorderSide(color: Color(0x28677294)),
          borderRadius: BorderRadius.circular(12)),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPictureCustom(svg),
          SizedBox(width: 10.w),
          Text(
            title,
            style: TextStyle(
              color: const Color(0xFF677294),
              fontSize: 16.sp,
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      ),
    );
  }
}
