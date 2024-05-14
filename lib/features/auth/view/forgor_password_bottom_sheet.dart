import 'package:doctor/core/custom/basic/text_form_field.dart';
import 'package:doctor/features/auth/view/bottom_sheet.dart';
import 'package:flutter/material.dart';

class ForgorPasswordBottomSheet extends StatelessWidget {
  const ForgorPasswordBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBottomSheet(
      title: 'Forgot password',
      body:
          'Enter your email for the verification proccesss,\nwe will send 4 digits code to your email.',
      buttonTitle: 'Continue',
      children: const [
        TextFormFieldCustom(
          validate: null,
          label: 'Email',
        ),
      ],
      onPressed: () {},
    );
  }
}
