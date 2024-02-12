import 'package:doctor/core/constant/color.dart';
import 'package:doctor/core/core/imports/export_path.dart';
import 'package:get/get.dart';

class TextFormFieldCustom extends StatelessWidget {
  final TextEditingController? controller;
  final String? label;
  final String hint;
  final String? Function(String?)? validate;
  final Function(String?)? onSaved;
  final Function()? onEditingComplete;
  final bool obscureText;
  final Widget? prefixIcon;
  final bool prefix;
  final String? suffixIcon;
  final Color? suffixColor;
  final Widget? suffix;
  final bool suffixPassword;
  final Function? suffixOnPressed;
  final TextInputType? keyboardType;
  final int maxDigit;
  final void Function(String)? onChanged;
  final TextInputAction? textInputAction;
  final Function? onTab;
  final FocusNode? focus;
  final TextAlign align;
  final String? initial;
  final bool? enable;
  final EdgeInsetsGeometry? padding;
  final double? height;
  final double? hintSize;
  final double? radius;
  final int? maxLines;
  final Color? fillColor;
  final Color? boarderColor;
  final InputDecoration? decoration;
  final TextStyle? style;
  final bool marginState;
  final bool filled;
  final TextStyle? hintStyle;
  final EdgeInsetsGeometry? margin;
  final Decoration? boxDecoration;
  final List<BoxShadow>? shadows;
  final InputBorder? border;
  final double? width;
  const TextFormFieldCustom({
    super.key,
    this.controller,
    this.label,
    this.hint = "",
    this.obscureText = false,
    this.prefixIcon,
    this.prefix = false,
    this.suffixIcon,
    this.suffixColor = AppColor.grey,
    this.suffixPassword = false,
    this.suffixOnPressed,
    required this.validate,
    this.maxDigit = 1000,
    this.hintSize = AppSize.s16,
    this.height = AppSize.s46,
    this.onChanged,
    this.textInputAction,
    this.onTab,
    this.onSaved,
    this.onEditingComplete,
    this.focus,
    this.align = TextAlign.start,
    this.initial,
    this.enable,
    this.fillColor = AppColor.white,
    this.boarderColor = AppColor.white2,
    this.padding,
    this.radius = 4.0,
    this.maxLines,
    this.decoration,
    this.style = const TextStyle(color: AppColor.black),
    this.marginState = true,
    this.keyboardType = TextInputType.text,
    this.filled = true,
    this.suffix,
    this.hintStyle,
    this.margin,
    this.boxDecoration,
    this.shadows,
    this.border,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        height: height,
        margin: EdgeInsets.zero,
        decoration: boxDecoration ??
            shapeDecoration(
                shape: roundedRectangleBorder(
                  borderRadius: BorderRadius.circular(radius!),
                ),
                shadows: shadows),
        child: TextFormField(
          maxLines: maxLines ?? 1,
          textAlignVertical: TextAlignVertical.center,
          textAlign: align,
          focusNode: focus,
          enabled: enable,
          initialValue: initial,
          controller: controller,
          textInputAction: textInputAction ?? TextInputAction.done,
          onChanged: (value) {
            onChanged != null ? onChanged!(value) : null;
          },
          onEditingComplete: onEditingComplete,
          obscureText: obscureText,
          validator: (value) {
            return validate!(value);
          },
          onSaved: onSaved,
          keyboardType: keyboardType,
          cursorColor: AppColor.black,
          onTap: () {
            onTab != null ? onTab!() : null;
          },
          inputFormatters: [
            LengthLimitingTextInputFormatter(maxDigit),
          ],
          scrollPhysics: const BouncingScrollPhysics(),
          style: style,
          decoration: decoration ??
              InputDecoration(
                contentPadding: padding,
                suffixIcon: suffix,
                isDense: true,
                filled: filled,
                fillColor: fillColor,
                //floatingLabelBehavior: FloatingLabelBehavior.auto,
                border: border ??
                    OutlineInputBorder(
                      borderRadius: BorderRadius.circular(radius!),
                      borderSide: const BorderSide(
                        color: AppColor.white2,
                      ),
                    ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(radius!),
                  borderSide: const BorderSide(
                    color: AppColor.white2,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(radius!),
                  borderSide: const BorderSide(color: AppColor.white2),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(radius!),
                  borderSide: const BorderSide(color: Colors.red),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(radius!),
                  borderSide: const BorderSide(color: Colors.red),
                ),
                suffixIconColor: AppColor.black,
                focusColor: AppColor.white,
                prefixIcon: prefix
                    ? Padding(
                        padding: const EdgeInsets.all(AppPadding.p16),
                        child: prefixIcon,
                      )
                    : null,
                labelText: label,
                hintText: hint.tr,
                floatingLabelStyle: const TextStyle(
                  color: AppColor.black,
                  fontSize: AppSize.s16,
                ),
                hintStyle: hintStyle,
                labelStyle: style ??
                    const TextStyle(
                      color: AppColor.grey,
                      fontSize: AppSize.s16,
                    ),
              ),
        ));
  }
}
// ?? AppFontStyle.black14w400()