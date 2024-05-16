import 'package:doctor/core/constant/color.dart';
import 'package:doctor/core/core/imports/export_path.dart';
import 'package:doctor/features/onboarding/view/widgets/onboarding/custombutton.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet(
      {super.key,
      required this.title,
      required this.body,
      required this.children,
      required this.buttonTitle,
      this.onPressed});
  final String title;
  final String body;
  final List<Widget> children;
  final String buttonTitle;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(
          top: AppPadding.p20.h,
          bottom: AppPadding.p60.h,
          right: AppPadding.p20.w,
          left: AppPadding.p20.w),
      decoration: const ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              width: 130.w,
              height: 5.h,
              decoration: ShapeDecoration(
                color: const Color(0xFFC4C4C4),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6)),
              ),
            ),
          ),
          SizedBox(height: 55.h),
          Text(
            title,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 24,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 12.h),
          Text(
            body,
            style: const TextStyle(
              color: Color(0xFF677294),
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 30.h),
          ...children,
          if (children.isNotEmpty) SizedBox(height: 30.h),
          Align(
            alignment: Alignment.center,
            child: CustomButton(
              onPressed: onPressed,
              minWidth: 350.w,
              height: 18.h,
              color: AppColor.green,
              padding: EdgeInsets.symmetric(vertical: 18.h),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              child: Text(
                buttonTitle,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomBottomSheet2 extends StatelessWidget {
  const CustomBottomSheet2({
    super.key,
    required this.title,
    required this.children,
  });
  final String title;
  final List<Widget> children;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(
          top: AppPadding.p20.h,
          bottom: AppPadding.p60.h,
          right: AppPadding.p20.w,
          left: AppPadding.p20.w),
      decoration: const ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              width: 130.w,
              height: 5.h,
              decoration: ShapeDecoration(
                color: const Color(0xFFC4C4C4),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6)),
              ),
            ),
          ),
          SizedBox(height: 30.h),
          Text(
            title,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 24,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 10.h),
          ...children,
          if (children.isNotEmpty) SizedBox(height: 10.h),
        ],
      ),
    );
  }
}
