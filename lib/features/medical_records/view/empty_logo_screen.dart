import 'package:doctor/core/constant/color.dart';
import 'package:doctor/core/core/imports/export_path.dart';
import 'package:doctor/core/widgets/custom_scaffold.dart';
import 'package:doctor/core/widgets/svg_pic/svg_pic.dart';
import 'package:doctor/features/home/view/screens/background.dart';
import 'package:doctor/features/medical_records/controller/medical_records.dart';
import 'package:doctor/features/onboarding/view/widgets/onboarding/custombutton.dart';
import 'package:get/get.dart';

class EmptyLogoScreen extends StatelessWidget {
  const EmptyLogoScreen({
    super.key,
    required this.titleAppBar,
    required this.list,
    required this.titleButton,
    required this.textHeader,
    required this.textBody,
    required this.svgIcon,
    this.showButton = false,
    this.onPressed,
    required this.child,
    this.right,
    this.left,
  });
  final String titleAppBar;
  final List list;
  final String titleButton;
  final String textHeader;
  final String textBody;
  final String svgIcon;
  final bool showButton;
  final Widget child;
  final void Function()? onPressed;

  final double? right;
  final double? left;
  @override
  Widget build(BuildContext context) {
    Get.put(MedicalRecordsControllerImp());
    return CustomScaffold(
      body: Background(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomAppBar(text: titleAppBar),
              SizedBox(height: 30.h),
              (list.isEmpty)
                  ? MedicalRecordsEmptyWidget(
                      textHeader: textHeader,
                      textBody: textBody,
                      svgIcon: svgIcon,
                      right: right,
                      left: left,
                    )
                  : SizedBox(
                      height: (showButton) ? 580.h : 680.h,
                      child: child,
                    ),
              if (showButton) SizedBox(height: 10.h),
              if (showButton)
                CustomButton(
                  onPressed: onPressed,
                  minWidth: 150.w,
                  height: 18.h,
                  color: AppColor.green,
                  padding:
                      EdgeInsets.symmetric(horizontal: 70.w, vertical: 18.h),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  child: Text(
                    titleButton,
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
      ),
    );
  }
}

class MedicalRecordsEmptyWidget extends StatelessWidget {
  const MedicalRecordsEmptyWidget({
    super.key,
    required this.textHeader,
    required this.textBody,
    required this.svgIcon,
    this.right = 60,
    this.left = 60,
  });
  final String textHeader;
  final String textBody;
  final String svgIcon;
  final double? right;
  final double? left;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.sp),
      child: Column(
        children: [
          SizedBox(height: 60.h),
          Container(
            width: 214.sp,
            height: 214.sp,
            padding: EdgeInsets.only(
              left: (left ?? 60).sp,
              right: (right ?? 60).sp,
              top: 48.sp,
              bottom: 48.sp,
            ),
            decoration: const ShapeDecoration(
              color: Color(0xC1C6EFE5),
              shape: OvalBorder(),
            ),
            child: SvgPictureCustom(svgIcon),
          ),
          SizedBox(height: 50.h),
          FittedBox(
            child: Text(
              textHeader,
              textAlign: TextAlign.center,
              maxLines: 1,
              style: TextStyle(
                color: const Color(0xFF222222),
                fontSize: 22.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          SizedBox(height: 8.h),
          if (textBody.isNotEmpty)
            Text(
              textBody,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: const Color(0xFF677294),
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
          if (textBody.isNotEmpty) SizedBox(height: 40.h),
        ],
      ),
    );
  }
}
