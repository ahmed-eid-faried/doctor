import 'package:doctor/core/core/imports/export_path.dart';

class LogoutDialog extends StatelessWidget {
  const LogoutDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      contentPadding: EdgeInsets.all(24.sp),
      actions: [
        IconButton(
            onPressed: () {
              Go.pop(context);
            },
            icon: Text(
              'Cancel',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: const Color(0xFF0EBE7F),
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
              ),
            )),
        IconButton(
            onPressed: () {},
            icon: Text(
              'Ok',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: const Color(0xFF0EBE7F),
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
              ),
            )),
      ],
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Log Out',
            style: TextStyle(
              color: Colors.black,
              fontSize: 26.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 4.h,
          ),
          Text(
            'Are you sure you want to logout?',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: const Color(0xFF677294),
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
            ),
          )
        ],
      ),
    );
  }
}
