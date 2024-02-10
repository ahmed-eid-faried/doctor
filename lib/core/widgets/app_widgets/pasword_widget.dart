// import 'package:doctor/core/widgets/text_custom/text_custom.dart';

// import '../../imports/export_path.dart';

// class PasswordWidget extends StatelessWidget {
//   const PasswordWidget({
//     super.key,
//     required this.validator,
//     this.controller,
//     required this.title,
//     this.passwordState = true,
//     this.initialValue = "",
//     this.state = false,
//   });
//   final String? Function(String?) validator;
//   final TextEditingController? controller;
//   final String title;
//   final bool passwordState;
//   final String initialValue;
//   final bool state;
//   @override
//   Widget build(BuildContext context) {
//     bool autofocusState = state;
//     return InkWell(
//       onTap: () {
//         autofocusState = !state;
//       },
//       child: Container(
//         margin: EdgeInsets.only(bottom: AppMargin.m8.h),
//         decoration: shapeDecoration(
//           color: AppColor.white,
//           shape: roundedRectangleBorder(
//             side: const BorderSide(width: AppSize.s1, color: AppColor.white2),
//             borderRadius: BorderRadius.circular(AppSize.s4),
//           ),
//         ),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Padding(
//               padding: EdgeInsets.symmetric(
//                   horizontal: AppPadding.p16.w, vertical: AppPadding.p8.w),
//               child: TextCustom(text: title, style: AppFontStyle.grey11w400()),
//             ),
//             Center(
//               child: TextFormField(
//                   autofocus: autofocusState,
//                   initialValue: initialValue,
//                   controller: controller,
//                   validator: (value) => validator(value),
//                   obscureText: passwordState,
//                   decoration: InputDecoration(
//                     isDense: true,
//                     contentPadding: EdgeInsets.symmetric(
//                         horizontal: AppPadding.p16.w,
//                         vertical: AppPadding.p8.h),
//                     border: InputBorder.none,
//                   ),
//                   style: AppFontStyle.black14w400()),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
