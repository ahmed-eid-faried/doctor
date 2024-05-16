import 'package:doctor/core/constant/color.dart';
import 'package:doctor/core/constant/image.dart';
import 'package:doctor/core/core/imports/export_path.dart';
import 'package:doctor/core/widgets/svg_pic/svg_pic.dart';
import 'package:doctor/features/home/view/screens/background.dart';
import 'package:doctor/features/medical_records/controller/cubit/add_medical_records_cubit.dart';
import 'package:doctor/features/medical_records/view/add_record_photo_bottom_sheet.dart';
import 'package:doctor/features/onboarding/view/widgets/onboarding/custombutton.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddMedicalRecordsScreen extends StatelessWidget {
  const AddMedicalRecordsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddMedicalRecordsCubit(),
      child: BlocBuilder<AddMedicalRecordsCubit, AddMedicalRecordsState>(
        builder: (context, state) {
          return Scaffold(
            body: Background(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.w),
                      child: const CustomAppBar(text: 'Add Records'),
                    ),
                    SizedBox(height: 30.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.w),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 210.w,
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: List.generate(
                                  1,
                                  (index) => Container(
                                    width: 100.w,
                                    height: 125.h,
                                    margin: const EdgeInsets.all(4),
                                    decoration: ShapeDecoration(
                                      image: const DecorationImage(
                                        image: AssetImage(AppImage.man),
                                        fit: BoxFit.fill,
                                      ),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              width: 100.w,
                              height: 125.h,
                              margin: const EdgeInsets.all(4),
                              decoration: ShapeDecoration(
                                color: const Color(0x330EBE7F),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6),
                                ),
                              ),
                              child: Center(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(
                                      Icons.add,
                                      size: 30.sp,
                                      color: const Color(0xFF0EBE7F),
                                    ),
                                    const Text(
                                      'Add',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFF0EBE7F),
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 120.h),
                    Container(
                      height: 429.h,
                      padding: EdgeInsets.symmetric(
                          vertical: 10.h, horizontal: 24.w),
                      decoration: const ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                          ),
                        ),
                        shadows: [
                          BoxShadow(
                            color: Color(0x14000000),
                            blurRadius: 20,
                            offset: Offset(0, 0),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 12.h),
                          Text(
                            'Record for',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 12.h),
                          Row(
                            children: [
                              Text(
                                'Abdullah Mamun',
                                style: TextStyle(
                                  color: const Color(0xFF0EBE7F),
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const Spacer(),
                              SvgPictureCustom(
                                AppSvg.edit,
                                width: 14.sp,
                                height: 14.sp,
                              )
                            ],
                          ),
                          SizedBox(height: 12.h),
                          Divider(color: Colors.black.withOpacity(0.1)),
                          SizedBox(height: 8.h),
                          Text(
                            'Type of record',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 18.h),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              TypeRecordWidget(
                                title: 'Report',
                                svgIcon: AppSvg.report,
                              ),
                              TypeRecordWidget(
                                title: 'Prescription',
                                svgIcon: AppSvg.prescription,
                              ),
                              TypeRecordWidget(
                                title: 'Invoice',
                                svgIcon: AppSvg.invoice,
                              ),
                            ],
                          ),
                          SizedBox(height: 10.h),
                          Divider(color: Colors.black.withOpacity(0.1)),
                          SizedBox(height: 10.h),
                          Text(
                            'Record created on',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 6.h),
                          Row(
                            children: [
                              Text(
                                '27 Feb, 2021',
                                style: TextStyle(
                                  color: const Color(0xFF0EBE7F),
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const Spacer(),
                              const SvgPictureCustom(AppSvg.edit)
                            ],
                          ),
                          SizedBox(height: 8.h),
                          Divider(color: Colors.black.withOpacity(0.1)),
                          SizedBox(height: 25.h),
                          Align(
                            alignment: Alignment.center,
                            child: CustomButton(
                              onPressed: () {
                                showModalBottomSheet(
                                    context: context,
                                    builder: (context) =>
                                        const AddRecordPhotoBottomSheet());
                              },
                              color: AppColor.green,
                              text: 'Upload record',
                              minWidth: double.infinity,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 70.w, vertical: 18.h),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class TypeRecordWidget extends StatelessWidget {
  const TypeRecordWidget({
    super.key,
    required this.title,
    required this.svgIcon,
  });
  final String title;
  final String svgIcon;

  @override
  Widget build(BuildContext context) {
    bool state = BlocProvider.of<AddMedicalRecordsCubit>(context, listen: true)
            .selectedTypeRecord ==
        title;
    return InkWell(
      onTap: () =>
          context.read<AddMedicalRecordsCubit>().selectRecordType(title),
      child: Column(
        children: [
          SvgPictureCustom(svgIcon,
              color: state ? AppColor.green : const Color(0xFF677294),
              height: 24.sp),
          SizedBox(height: 6.h),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: state ? AppColor.green : const Color(0xFF677294),
              fontSize: 13.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
