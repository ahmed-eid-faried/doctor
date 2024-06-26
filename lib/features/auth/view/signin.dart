import 'package:doctor/core/constant/color.dart';
import 'package:doctor/core/core/imports/export_path.dart';
import 'package:doctor/core/custom/basic/text_form_field.dart';
import 'package:doctor/core/widgets/custom_scaffold.dart';
import 'package:doctor/features/auth/view/forgor_password_bottom_sheet.dart';
import 'package:doctor/features/auth/view/otp_bottom_sheet.dart';
import 'package:doctor/features/auth/view/signup.dart';
import 'package:doctor/features/find_doctors_screen/controller/find_doctor.dart';
import 'package:doctor/features/home/view/screens/background.dart';
import 'package:doctor/features/onboarding/view/widgets/onboarding/custombutton.dart';
import 'package:get/get.dart';

class SignInScreen extends GetView<FindDoctorControllerImp> {
  const SignInScreen({super.key});

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
                  'Welcome back',
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
                  label: 'Email',
                ),
                SizedBox(height: 18.h),
                const PasswordWidget(
                  title: 'Password',
                  controller: null,
                ),
                SizedBox(height: 32.h),
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
                    'Login',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(height: 10.h),
                TextButton(
                  onPressed: () {
                    showModalBottomSheet(
                        context: context,
                        builder: (context) =>
                            const ForgorPasswordBottomSheet());
                  },
                  child: Text(
                    'Forgor password',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: const Color(0xFF0EBE7F),
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(height: 70.h),
                TextButton(
                  onPressed: () {
                    showModalBottomSheet(
                        context: context,
                        builder: (context) => const OTPBottomSheet());
                  },
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
