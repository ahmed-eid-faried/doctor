import 'dart:math';

import 'package:doctor/core/constant/color.dart';
import 'package:doctor/core/core/imports/export_path.dart';
import 'package:doctor/core/custom/basic/text_form_field.dart';
import 'package:doctor/core/widgets/drop_down/drop_dwon_button.dart';
import 'package:doctor/features/medical_records/view/empty_logo_screen.dart';
import 'package:doctor/features/medical_records/view/logout.dart';

class PatientDetailsScreen extends StatelessWidget {
  const PatientDetailsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    List list = [5];
    return EmptyLogoScreen(
        showButton: true,
        list: list,
        titleAppBar: 'Patient Details',
        svgIcon: AppSvg.patientDetails,
        textHeader: 'Your cart is empty',
        textBody: '',
        titleButton: 'Continue',
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => const LogoutDialog(),
          );
        },
        child: const PatientDetails()

        //  ListView.builder(
        //   shrinkWrap: true,
        //   itemCount: list.length,
        //   padding: EdgeInsets.zero,
        //   itemBuilder: (context, index) => const MedicalRecordCard(),
        // ),
        );
  }
}

class PatientDetails extends StatelessWidget {
  const PatientDetails({super.key});
  @override
  Widget build(BuildContext context) {
    final List<String> items = [
      'Item1',
      'Item2',
      'Item3',
      'Item4',
    ];
    return Column(
      children: [
        const StepperWidget(),
        Container(
          width: 335.w,
          height: 518.h,
          padding: EdgeInsets.symmetric(vertical: 28.h, horizontal: 15.w),
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            shadows: const [
              BoxShadow(
                color: Color(0x0C000000),
                blurRadius: 20,
                offset: Offset(0, 0),
                spreadRadius: 0,
              )
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Patient’s Name',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 8.h),
              const TextFormFieldCustom(
                validate: null,
                hint: 'Abdullah Mamun',
              ),
              SizedBox(height: 16.h),
              Text(
                'Age',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 8.h),
              Row(
                children: [
                  CustomDropdownMenuPatientDetails(
                    items: items,
                    title: 'Day ',
                  ),
                  SizedBox(width: 12.w),
                  CustomDropdownMenuPatientDetails(
                    items: items,
                    title: 'Month',
                  ),
                  SizedBox(width: 12.w),
                  CustomDropdownMenuPatientDetails(
                    items: items,
                    title: 'Year ',
                  ),
                ],
              ),
              SizedBox(height: 18.h),
              Text(
                'Gender',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Radio(
                value: "value",
                groupValue: "groupValue",
                onChanged: (value) {},
              ),
              SizedBox(height: 16.h),
              Text(
                'Mobile Number',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 8.h),
              const TextFormFieldCustom(
                validate: null,
                hint: '+8801000000000',
              ),
              SizedBox(height: 18.h),
              Text(
                'Email ',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 8.h),
              const TextFormFieldCustom(
                validate: null,
                hint: 'itsmemamun1@gmail.com',
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class CustomRadioList extends StatelessWidget {
  const CustomRadioList({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio(
          value: "value",
          groupValue: "groupValue",
          onChanged: (value) {},
        ),
      ],
    );
  }
}

class CustomDropdownMenuPatientDetails extends StatefulWidget {
  const CustomDropdownMenuPatientDetails(
      {super.key, required this.items, required this.title});
  final List<String> items;
  final String title;

  @override
  State<CustomDropdownMenuPatientDetails> createState() =>
      _CustomDropdownMenuPatientDetailsState();
}

class _CustomDropdownMenuPatientDetailsState
    extends State<CustomDropdownMenuPatientDetails> {
  String? valueListenable;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 16.h),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0x28677294)),
          borderRadius: BorderRadius.circular(6),
        ),
      ),
      child: CustomDropdownMenu(
          dropdownItems: widget.items,
          valueListenable: valueListenable,
          onChanged: (value) {
            setState(() {
              valueListenable = value;
            });
          },
          iconWidget: Row(
            children: [
              Text(
                valueListenable ?? widget.title,
                style: TextStyle(
                  color: const Color(0xFF677294),
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(width: 8.w),
              Transform.rotate(
                  angle: pi / 2,
                  child: const Icon(Icons.arrow_forward_ios_rounded))
            ],
          )),
    );
  }
}

class StepperWidget extends StatelessWidget {
  const StepperWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335.w,
      height: 38.h,
      padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 14.w),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x0C000000),
            blurRadius: 20,
            offset: Offset(0, 0),
            spreadRadius: 0,
          )
        ],
      ),
      child: Row(
        children: [
          Text(
            'Step 1/4',
            style: TextStyle(
              color: Colors.black,
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
          const Expanded(child: SliderCustom()),
        ],
      ),
    );
  }
}

class SliderCustom extends StatefulWidget {
  const SliderCustom({super.key});

  @override
  State<SliderCustom> createState() => _SliderCustomState();
}

class _SliderCustomState extends State<SliderCustom> {
  double kvalue = 1;

  @override
  Widget build(BuildContext context) {
    return Slider(
      value: kvalue,
      min: 0,
      max: 4,
      divisions: 4,
      activeColor: AppColor.green,
      // overlayColor: MaterialStatePropertyAll(Colors.white.withOpacity(0.0001)),
      thumbColor: Colors.white.withOpacity(0),
      label: "${kvalue.toInt()}",
      onChanged: (value) {
        setState(() {
          kvalue = value;
        });
      },
    );
  }
}







// class MedicalRecordCard extends StatelessWidget {
//   const MedicalRecordCard({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final List<String> items = [
//       'Item1',
//       'Item2',
//       'Item3',
//       'Item4',
//     ];
//     String? valueListenable;

//     return Container(
//         margin: EdgeInsets.symmetric(vertical: 6.sp, horizontal: 20.sp),
//         padding: EdgeInsets.all(14.sp),
//         decoration: ShapeDecoration(
//           color: Colors.white,
//           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
//           shadows: const [
//             BoxShadow(
//               color: Color(0x14000000),
//               blurRadius: 20,
//               offset: Offset(0, 0),
//               spreadRadius: 0,
//             )
//           ],
//         ),
//         child: Row(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Column(
//               children: [
//                 Container(
//                   padding: EdgeInsets.all(14.sp),
//                   decoration: ShapeDecoration(
//                     color: const Color(0xFF0EBE7F),
//                     shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(6)),
//                   ),
//                   child: Text(
//                     '27\nFEB',
//                     textAlign: TextAlign.center,
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 14.sp,
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 6.h),
//                 Container(
//                   padding:
//                       EdgeInsets.symmetric(vertical: 6.sp, horizontal: 14.sp),
//                   decoration: ShapeDecoration(
//                     color: const Color(0x190EBE7F),
//                     shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(2)),
//                   ),
//                   child: Text(
//                     'NEW',
//                     style: TextStyle(
//                       color: const Color(0xFF0EBE7F),
//                       fontSize: 12.sp,
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(width: 12.w),
//             Expanded(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     'Orders added by you',
//                     style: TextStyle(
//                       color: Colors.black,
//                       fontSize: 14.sp,
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),
//                   SizedBox(height: 6.h),
//                   Text(
//                     'Order for Abdullah mamun',
//                     style: TextStyle(
//                       color: const Color(0xFF0EBE7F),
//                       fontSize: 12.sp,
//                       fontWeight: FontWeight.w300,
//                     ),
//                   ),
//                   SizedBox(height: 12.h),
//                   Text(
//                     '1 Prescription',
//                     style: TextStyle(
//                       color: const Color(0xFF677294),
//                       fontSize: 12.sp,
//                       fontWeight: FontWeight.w300,
//                     ),
//                   )
//                 ],
//               ),
//             ),
//             CustomDropdownMenu(
//                 dropdownItems: items,
//                 valueListenable: valueListenable,
//                 onChanged: (value) {
//                   valueListenable = value;
//                 },
//                 iconWidget: const SvgPictureCustom(AppSvg.menuPoints))
//           ],
//         ));
//   }
// }
