import 'package:doctor/core/core/imports/export_path.dart';
import 'package:doctor/core/widgets/drop_down/drop_dwon_button.dart';
import 'package:doctor/core/widgets/svg_pic/svg_pic.dart';
import 'package:doctor/features/medical_records/controller/medical_records.dart';
import 'package:doctor/features/medical_records/view/empty_logo_screen.dart';
import 'package:get/get.dart';

class MedicalRecordsScreen extends StatelessWidget {
  const MedicalRecordsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    List list = [1, 2, 3, 5, 6, 4, 7, 8, 9, 10, 1, 5];
    Get.put(MedicalRecordsControllerImp());
    return EmptyLogoScreen(
      showButton: true,
      list: list,
      titleAppBar: 'Medical Records',
      svgIcon: AppSvg.medicalRecords,
      textHeader: 'Add a medical record.',
      textBody: 'A detailed health history helps a doctor diagnose\nyou btter.',
      titleButton: 'Add a record',
      onPressed: () {},
      right: 44,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: list.length,
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) => const MedicalRecordCard(),
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
