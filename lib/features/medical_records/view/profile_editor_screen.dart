import 'package:doctor/core/constant/color.dart';
import 'package:doctor/core/core/imports/export_path.dart';
import 'package:doctor/core/widgets/custom_scaffold.dart';
import 'package:doctor/core/widgets/text_form_field/text_form_field_custom.dart';
import 'package:doctor/features/find_doctors_screen/controller/find_doctor.dart';
import 'package:doctor/features/home/view/screens/background.dart';
import 'package:get/get.dart';

class ProfileEditorScreen extends GetView<FindDoctorControllerImp> {
  const ProfileEditorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(FindDoctorControllerImp());
    return CustomScaffold(
      body: Background(
          appBar: const CustomAppBar(
            text: 'Profile',
            textColor: AppColor.white,
          ),
          profile: Container(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            decoration: const ShapeDecoration(
              color: Color(0xFF556386),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'What is your name?',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 40.h),
                const TextFormFieldCustom(
                  validate: null,
                  // label: '',
                  controller: null,
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  fillColor: Color(0xFF556386),
                  boarderColor: Color(0xFF556386),
                ),
              ],
            ),
          ),
          child: const Text("")),
    );
  }
}
