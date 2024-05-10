import 'package:doctor/core/core/imports/export_path.dart';

class Thankyouscreen extends StatelessWidget {
  const Thankyouscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      contentPadding:
          EdgeInsets.only(bottom: 38.h, top: 26.h, left: 20.w, right: 20.w),
      content: Container(
        child: Container(
          width: 156.sp,
          height: 156.sp,
          decoration: const ShapeDecoration(
            color: Color(0xFFE7F8F2),
            shape: OvalBorder(),
          ),
        ),
      ),
    );
  }
}
