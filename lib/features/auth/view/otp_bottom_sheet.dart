import 'package:doctor/core/core/imports/export_path.dart';
import 'package:doctor/features/auth/view/bottom_sheet.dart';
import 'package:doctor/features/auth/view/otp.dart';
import 'package:flutter/widgets.dart';

class OTPBottomSheet extends StatelessWidget {
  const OTPBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBottomSheet(
      title: 'Enter 4 Digits Code',
      body: 'Enter the 4 digits code that you received on\nyour email.',
      buttonTitle: 'Continue',
      children: const [
        Align(child: OTPWidget()),
      ],
      onPressed: () {},
    );
  }
}
