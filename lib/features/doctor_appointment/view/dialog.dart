import 'package:doctor/core/constant/color.dart';
import 'package:doctor/core/core/imports/export_path.dart';
import 'package:doctor/core/widgets/svg_pic/svg_pic.dart';
import 'package:doctor/features/onboarding/view/widgets/onboarding/custombutton.dart';

class Thankyouscreen extends StatelessWidget {
  const Thankyouscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      contentPadding:
          EdgeInsets.only(bottom: 38.h, top: 26.h, left: 20.w, right: 20.w),
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 156.sp,
            height: 156.sp,
            padding: EdgeInsets.all(42.sp),
            decoration: const ShapeDecoration(
              color: Color(0xFFE7F8F2),
              shape: OvalBorder(),
            ),
            child: const SvgPictureCustom(AppSvg.done),
          ),
          SizedBox(height: 12.h),
          Text(
            'Thank You !',
            style: TextStyle(
              color: const Color(0xFF333333),
              fontSize: 38.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 6.h),
          Text(
            'Your Appointment Successful',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: const Color(0xFF677294),
              fontSize: 20.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 30.h),
          SizedBox(
            width: 265.w,
            child: Text(
              'You booked an appointment with Dr. \nPediatrician Purpieson on February 21,\nat 02:00 PM\n',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: const Color(0xFF677294),
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(height: 30.h),
          CustomButton(
            onPressed: () {
              Go.pop(context);
            },
            color: AppColor.green,
            text: 'Done',
            minWidth: 295.w,
            height: 54.h,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
          ),
          SizedBox(height: 18.h),
          Text(
            'Edit your appointment',
            style: TextStyle(
              color: const Color(0xFF677294),
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
            ),
          )
        ],
      ),
    );
  }
}
