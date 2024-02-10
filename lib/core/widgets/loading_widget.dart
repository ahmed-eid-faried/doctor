import 'package:doctor/core/constant/sizes.dart';
import 'package:doctor/core/core/themes/app_theme.dart';
import 'package:doctor/core/core/utils/values_manager.dart';
 
import 'package:flutter/material.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: AppPadding.p20),
      child: Center(
        child: SizedBox(
          height: AppSize.s30,
          width: AppSize.s30,
          child: CircularProgressIndicator(
            color: secondaryColor,
          ),
        ),
      ),
    );
  }
}
