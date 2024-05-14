import 'package:doctor/core/constant/color.dart';
import 'package:doctor/core/constant/fonts.dart';
import 'package:doctor/core/core/imports/export_path.dart';
import 'package:doctor/core/core/imports/export_path_packages.dart';
import 'package:doctor/core/core/utils/font_manager.dart';
import 'package:doctor/core/custom/basic/text.dart';
import 'package:doctor/core/print.dart';
import 'package:doctor/features/auth/controller/otp_cubit/otp_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OTPWidget extends StatefulWidget {
  const OTPWidget({super.key});

  @override
  State<OTPWidget> createState() => _OTPWidgetState();
}

class _OTPWidgetState extends State<OTPWidget> {
  final pinController = TextEditingController();
  final focusNode = FocusNode();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    pinController.dispose();
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Color focusedBorderColor = AppColor.white2;
    Color fillColor = AppColor.black2;
    Color borderColor = const Color(0x28677294);

    final defaultPinTheme = PinTheme(
      width: AppSize.s54.r,
      height: AppSize.s54.r,
      textStyle: AppFontStyle.black14w400,
      decoration: boxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(AppSize.s12),
        border: Border.all(width: 1, color: borderColor),
      ),
    );

    return Form(
      key: formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocProvider.value(
            value: BlocProvider.of<OtpCubit>(context),
            child: BlocBuilder<OtpCubit, OtpState>(
              builder: (context, state) {
                return Pinput(
                  length: 4,
                  controller: pinController,
                  focusNode: focusNode,
                  androidSmsAutofillMethod:
                      AndroidSmsAutofillMethod.smsUserConsentApi,
                  listenForMultipleSmsOnAndroid: true,
                  defaultPinTheme: defaultPinTheme,
                  separatorBuilder: (index) =>
                      const SizedBox(width: AppSize.s8),
                  // validator: (value) {
                  //   print('otpCubit.otp');
                  //   print(otpCubit.otp);
                  //   print('otpCubit.otp');
                  //   return value == otpCubit.otp ? null : 'Pin is incorrect';
                  // },
                  // onClipboardFound: (value) {
                  //   Print.line('onClipboardFound: $value');
                  //   pinController.setTextCustom(text:value);
                  // },
                  hapticFeedbackType: HapticFeedbackType.lightImpact,
                  onCompleted: (pin) async {
                    Print.line('onCompleted: $pin');
                  },
                  onChanged: (value) {
                    Print.line('onChanged: $value');
                  },
                  cursor: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: AppMargin.m8),
                        width: AppSize.s22,
                        height: AppSize.s1,
                        color: focusedBorderColor,
                      ),
                    ],
                  ),
                  focusedPinTheme: defaultPinTheme.copyWith(
                    decoration: defaultPinTheme.decoration!.copyWith(
                      borderRadius: BorderRadius.circular(AppSize.s8),
                      border: Border.all(color: focusedBorderColor),
                    ),
                  ),
                  submittedPinTheme: defaultPinTheme.copyWith(
                    decoration: defaultPinTheme.decoration!.copyWith(
                      color: fillColor,
                      borderRadius: BorderRadius.circular(AppSize.s20),
                      border: Border.all(color: focusedBorderColor),
                    ),
                  ),
                  errorPinTheme: defaultPinTheme.copyBorderWith(
                    border: Border.all(color: Colors.redAccent),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: AppSize.s16.h),
          TextButton(
              onPressed: () {},
              child: const TextCustom(LocaleKeys.resendCode,
                  style: TextStyle(
                    fontSize: FontSize.s14,
                    color: AppColor.green,
                    fontWeight: FontWeightManager.medium,
                    decoration: TextDecoration.underline,
                    decorationColor: AppColor.green,
                  ))),
          // SizedBox(height: AppSize.s24.h),
          // CustomButton(
          //     text: LocaleKeys.submit,
          //     onPressed: () async {
          //       focusNode.unfocus();
          //       // formKey.currentState!.validate();
          //       if (formKey.currentState!.validate()) {
          //         /////////////////
          //         // var check = await OtpCubit.get(context).verify(
          //         //     otp: pinController.text,
          //         //     email: EditProfileCubit.get(context).emailController.text,
          //         //     context: context);
          //         // if (check) {
          //         //   showToast(
          //         //     message: 'Verified',
          //         //   );
          //         //   Future.delayed(
          //         //     const Duration(milliseconds: 20),
          //         //     () => Go.navigator(context, Routes.home),
          //         //   );
          //         // } else {
          //         //   showToast(
          //         //     message: 'Otp is invalid',
          //         //     color: AppColor.red,
          //         //   );
          //         // }
          //         ////////////////
          //         Navigator.pop(context);
          //         if (Navigator.canPop(context)) {
          //           Navigator.pop(context);
          //         }
          //         // showDialog(
          //         //     context: context,
          //         //     builder: (context) => const RateDialogWidget());
          //       }
          //     }),
        ],
      ),
    );
  }
}
