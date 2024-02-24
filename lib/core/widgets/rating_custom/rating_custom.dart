import 'package:doctor/core/constant/color.dart';
import 'package:doctor/core/core/imports/export_path.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RatingBarCustom extends StatelessWidget {
  final int itemCount;
  final bool enable;
  final String averageRating;
  final bool showText;
  final double itemSize;
  final double minRate;
  final FontWeight fontWeight;
  final double fontSize;
  final Color color;
  final Function(double rate)? currentRate;
  final MainAxisAlignment mainAxisAlignment;
  final Color unratedColor;
  const RatingBarCustom(
      {this.itemCount = 5,
      required this.averageRating,
      this.enable = false,
      this.showText = false,
      this.itemSize = 24,
      this.minRate = 0.5,
      this.fontSize = AppSize.s16,
      this.fontWeight = FontWeight.bold,
      this.currentRate,
      this.color = AppColor.black,
      super.key,
      this.mainAxisAlignment = MainAxisAlignment.start,
      this.unratedColor = const Color(0xffECEFF1)});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        if (showText) const RSizedBox.horizontal(AppSize.s8),
        RatingBar.builder(
          minRating: minRate,
          ignoreGestures: !enable,
          itemSize: itemSize,
          initialRating: double.parse(averageRating),
          direction: Axis.horizontal,
          allowHalfRating: true,
          itemCount: itemCount,
          itemPadding: const EdgeInsets.symmetric(horizontal: 2.0),
          unratedColor: unratedColor,
          itemBuilder: (context, _) => SvgPicture.asset(AppSvg.star),
          onRatingUpdate: (rating) {
            currentRate == null ? null : currentRate!(rating);
          },
        ),
        if (showText) const SizedBox(width: 20),
        if (showText)
          Text(
            // arabic: AppConstants.language,
            // text:
            averageRating,
            // style: AppFontStyle.black16w600() ??
            //     TextStyle(
            //       color: color,
            //       fontSize: fontSize,
            //       fontWeight: fontWeight,
            //     ),
          ),
      ],
    );
  }
}
