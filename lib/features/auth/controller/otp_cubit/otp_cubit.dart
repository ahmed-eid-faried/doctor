//  import 'package:email_otp/email_otp.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// import 'package:firebase_auth/firebase_auth.dart';

part 'otp_state.dart';

class OtpCubit extends Cubit<OtpState> {
  OtpCubit() : super(OtpInitial());

  static OtpCubit get(context) => BlocProvider.of(context);
  // String phoneNumber = '';

  // EmailOTP myAuth = EmailOTP();

  // FirebaseAuth auth = FirebaseAuth.instance;
  // String otp = '';
  // var verificationId = '';
  // bool isEmail = false;

  // Future<void> verifyPhone(
  //     {required String phoneNumber, required BuildContext context}) async {
  //   try {
  //     await auth.verifyPhoneNumber(
  //       phoneNumber: phoneNumber,
  //       verificationFailed: (FirebaseAuthException e) {
  //         if (e.code == 'invalid-phone-number') {
  //           Print.line('The provided phone number is not valid.');
  //         }
  //         Print.line(e.toString());
  //         // Handle other errors
  //       },
  //       verificationCompleted: (PhoneAuthCredential phoneAuthCredential) {
  //         otp = phoneAuthCredential.smsCode ?? '';
  //         auth.signInWithCredential(phoneAuthCredential);
  //         showDialog(
  //             context: context, builder: (context) => const OTPAlertDialog());
  //         Print.line('SMS-CODE ${phoneAuthCredential.smsCode}');
  //       },
  //       codeSent: (String verificationId, int? forceResendingToken) {
  //         this.verificationId = verificationId;
  //         showDialog(
  //             context: context, builder: (context) => const OTPAlertDialog());
  //         Print.line('CODE-SENT $forceResendingToken');
  //         Print.line('CODE-SENT $verificationId');
  //       },
  //       codeAutoRetrievalTimeout: (String verificationId) {
  //         this.verificationId = verificationId;

  //         Print.line('CODE-AUTO-RETRIEVAL $verificationId');
  //       },
  //     );
  //   } catch (e) {
  //     Print.line(e.toString());
  //   }
  // }

  // Future<bool> verifyOtp({required String otp}) async {
  //   var credential = await auth.signInWithCredential(
  //       PhoneAuthProvider.credential(
  //           verificationId: verificationId, smsCode: otp));

  //   return credential.user != null ? true : false;
  // }

  // // Future<void> sendEmailOtp(
  // //     {required String email, required BuildContext context}) async {
  // //   myAuth.setTheme(
  // //     theme: "v3",
  // //   );
  // //   myAuth.setConfig(
  // //       appEmail: "ahmed.omda2770@gmail.com",
  // //       appName: AppStrings.appName,
  // //       userEmail: email,
  // //       otpLength: 6,
  // //       otpType: OTPType.digitsOnly);
  // //   try {
  // //     // await myAuth.sendOTP();
  // //
  // //     if (await myAuth.sendOTP() == true) {
  // //       Future.delayed(
  // //         const Duration(milliseconds: 50),
  // //         () {
  // //           ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
  // //             content: Text("OTP has been sent"),
  // //           ));
  // //           showDialog(
  // //               context: context, builder: (context) => const OTPAlertDialog());
  // //         },
  // //       );
  // //     } else {
  // //       Future.delayed(
  // //         const Duration(milliseconds: 50),
  // //         () {
  // //           ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
  // //             content: Text("Oops, OTP send failed"),
  // //           ));
  // //         },
  // //       );
  // //     }
  // //   } catch (e) {
  // //     Future.delayed(
  // //       const Duration(milliseconds: 50),
  // //       () {
  // //         ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
  // //           content: Text("Oops, OTP send failed"),
  // //         ));
  // //       },
  // //     );
  // //     Print.line(e);
  // //   }
  // // }

  // Future<void> sendEmailOtp(
  //     {required String email, required BuildContext context}) async {
  //   try {
  //     await auth
  //         .sendSignInLinkToEmail(
  //       email: email,
  //       actionCodeSettings: ActionCodeSettings(
  //         url: 'https://bishyakaa.page.link', // Replace with your dynamic link
  //         handleCodeInApp: true,
  //         iOSBundleId: 'YOUR_BUNDLE_ID', //TODO: Replace with your iOS bundle ID
  //         androidPackageName:
  //             'com.bishyaka.consumer.work', // Replace with your Android package name
  //         androidInstallApp: true,
  //         androidMinimumVersion:
  //             '23', // Replace with your Android minimum version) ,
  //       ),
  //     )
  //         .then((value) {
  //       Future.delayed(
  //         const Duration(milliseconds: 50),
  //         () {
  //           ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
  //             content: Text("OTP has been sent"),
  //           ));
  //           showDialog(
  //               context: context, builder: (context) => const OTPAlertDialog());
  //         },
  //       );
  //     }).catchError((onError) {
  //       Future.delayed(
  //         const Duration(milliseconds: 50),
  //         () {
  //           ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
  //             content: Text("Oops, OTP send failed"),
  //           ));
  //         },
  //       );
  //     });
  //   } catch (e) {
  //     Future.delayed(
  //       const Duration(milliseconds: 50),
  //       () {
  //         ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
  //           content: Text("Oops, OTP send failed"),
  //         ));
  //       },
  //     );
  //     Print.line(e.toString());
  //   }
  // }

  // // Future<bool> verifyEmailOtp({required String otp}) async {
  // //   return await myAuth.verifyOTP(otp: otp) == true;
  // // }

  // Future<bool> verifyEmailOtp(String email, String otp) async {
  //   try {
  //     final UserCredential userCredential = await auth.signInWithEmailLink(
  //       email: email,
  //       emailLink: otp,
  //     );

  //     final User? user = userCredential.user;

  //     if (user != null) {
  //       // OTP verified successfully, proceed with your action
  //       Print.line('OTP Verified successfully!');
  //       return true;
  //     } else {
  //       // OTP verification failed
  //       Print.line('OTP Verification failed.');
  //       return false;
  //     }
  //   } catch (e) {
  //     Print.line('Error verifying OTP: $e');
  //     return false;
  //   }
  // }

  // Future<bool> verify(
  //     {required String otp,
  //     required String email,
  //     required BuildContext context}) async {
  //   if (isEmail) {
  //     EditProfileCubit.get(context).editProfile();
  //     return verifyEmailOtp(email, otp);
  //   } else {
  //     EditProfileCubit.get(context).editProfile();

  //     return verifyOtp(otp: otp);
  //   }
  // }
}
