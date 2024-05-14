import 'package:doctor/core/constant/color.dart';
import 'package:doctor/core/core/imports/export_path.dart';
import 'package:doctor/core/widgets/custom_scaffold.dart';
import 'package:doctor/core/widgets/drop_down/drop_dwon_button.dart';
import 'package:doctor/core/widgets/svg_pic/svg_pic.dart';
import 'package:doctor/features/home/view/screens/background.dart';
import 'package:doctor/features/medical_records/controller/medical_records.dart';
import 'package:doctor/features/onboarding/view/widgets/onboarding/custombutton.dart';
import 'package:get/get.dart';

class MedicalRecordsScreen extends GetView<MedicalRecordsControllerImp> {
  const MedicalRecordsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    List records = [1, 2, 5, 5, 4, 7, 9, 7];

    Get.put(MedicalRecordsControllerImp());
    return CustomScaffold(
      body: Background(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const CustomAppBar(
                text: 'Medical Records',
              ),
              SizedBox(height: 30.h),
              (records.isEmpty)
                  ? const MedicalRecordsEmptyWidget()
                  : SizedBox(
                      height: 580.h,
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: records.length,
                        padding: EdgeInsets.zero,
                        itemBuilder: (context, index) =>
                            const MedicalRecordCard(),
                      ),
                    ),
              SizedBox(height: 10.h),
              CustomButton(
                onPressed: () {},
                minWidth: 150.w,
                height: 18.h,
                color: AppColor.green,
                padding: EdgeInsets.symmetric(horizontal: 70.w, vertical: 18.h),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                child: Text(
                  'Add a record',
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

class MedicalRecordCard extends StatelessWidget {
  const MedicalRecordCard({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> items = [
      'Item1',
      'Item2',
      'Item3',
      'Item4',
      'Item5',
      'Item6',
    ];
    String? valueListenable;

    return Container(
        margin: EdgeInsets.symmetric(vertical: 6.sp, horizontal: 20.sp),
        padding: EdgeInsets.all(14.sp),
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
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Container(
                  padding: EdgeInsets.all(14.sp),
                  decoration: ShapeDecoration(
                    color: const Color(0xFF0EBE7F),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6)),
                  ),
                  child: Text(
                    '27\nFEB',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(height: 6.h),
                Container(
                  padding:
                      EdgeInsets.symmetric(vertical: 6.sp, horizontal: 14.sp),
                  decoration: ShapeDecoration(
                    color: const Color(0x190EBE7F),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(2)),
                  ),
                  child: Text(
                    'NEW',
                    style: TextStyle(
                      color: const Color(0xFF0EBE7F),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(width: 12.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Records added by you',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 6.h),
                  Text(
                    'Record for Abdullah mamun',
                    style: TextStyle(
                      color: const Color(0xFF0EBE7F),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  SizedBox(height: 12.h),
                  Text(
                    '1 Prescription',
                    style: TextStyle(
                      color: const Color(0xFF677294),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w300,
                    ),
                  )
                ],
              ),
            ),
            CustomDropdownMenu(
                dropdownItems: items,
                valueListenable: valueListenable,
                onChanged: (value) {
                  valueListenable = value;
                },
                iconWidget: const SvgPictureCustom(AppSvg.menuPoints))
          ],
        ));
  }
}

class MedicalRecordsEmptyWidget extends StatelessWidget {
  const MedicalRecordsEmptyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 60.h),
        Container(
          width: 214.sp,
          height: 214.sp,
          padding: EdgeInsets.only(
            left: 60.sp,
            right: 44.sp,
            top: 48.sp,
            bottom: 48.sp,
          ),
          decoration: const ShapeDecoration(
            color: Color(0xC1C6EFE5),
            shape: OvalBorder(),
          ),
          child: const SvgPictureCustom(AppSvg.medicalRecords),
        ),
        SizedBox(height: 50.h),
        Text(
          'Add a medical record.',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: const Color(0xFF222222),
            fontSize: 22.sp,
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(height: 8.h),
        Text(
          'A detailed health history helps a doctor diagnose\nyou btter.',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: const Color(0xFF677294),
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(height: 40.h),
      ],
    );
  }
}
