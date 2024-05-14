import 'package:doctor/core/core/imports/export_path.dart';
import 'package:doctor/core/custom/basic/text_form_field.dart';
import 'package:doctor/features/auth/view/bottom_sheet.dart';

class ConfirmPasswordBottomSheet extends StatelessWidget {
  const ConfirmPasswordBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBottomSheet(
      title: 'Reset Password',
      body:
          'Set the new password for your account so you can login and access all the features.',
      buttonTitle: 'Update Password',
      children: [
        const PasswordWidget(
          title: 'New Password',
          controller: null,
        ),
        SizedBox(height: 10.h),
        const PasswordWidget(
          title: 'Re-enter Password',
          controller: null,
        ),
      ],
      onPressed: () {},
    );
  }
}
