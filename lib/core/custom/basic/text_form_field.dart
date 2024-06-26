import 'package:doctor/core/constant/color.dart';
import 'package:doctor/core/core/utils/constants/svg.dart';
import 'package:doctor/core/core/utils/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TextFormFieldCustom extends StatelessWidget {
  final TextEditingController? controller;
  final String? label;
  final String? hint;
  final String? Function(String?)? validate;
  final Function(String?)? onSaved;
  final Function()? onEditingComplete;
  final bool obSecure;
  final Widget? prefixIcon;
  final bool prefix;
  final String? suffixIcon;
  final bool suffix;
  final void Function()? suffixOnPressed;
  final TextInputType? keyboardType;
  final int maxDigit;
  final Function? onChanged;
  final TextInputAction? textInputAction;
  final Function? onTab;
  final FocusNode? focus;
  final TextAlign align;
  final String? initial;
  final bool? enable;
  final double? padding;
  final int? maxLines;
  final Color? fillColor;
  final Color boarderColor;

  const TextFormFieldCustom(
      {super.key,
      this.controller,
      this.label,
      this.hint,
      this.obSecure = false,
      this.prefixIcon,
      this.prefix = false,
      this.suffixIcon = '',
      this.suffix = false,
      this.suffixOnPressed,
      required this.validate,
      this.keyboardType,
      this.maxDigit = 100,
      this.onChanged,
      this.textInputAction,
      this.onTab,
      this.onSaved,
      this.onEditingComplete,
      this.focus,
      this.align = TextAlign.start,
      this.initial,
      this.enable,
      this.fillColor = UIColor.background,
      this.boarderColor = UIColor.background,
      this.padding = 16.0,
      this.maxLines});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines ?? 1,
      textAlignVertical: TextAlignVertical.center,
      textAlign: align,
      focusNode: focus,
      // autofocus: true,
      enabled: enable,
      initialValue: initial,
      controller: controller,
      textInputAction: textInputAction ?? TextInputAction.next,
      onChanged: (value) {
        //onChanged!(value);
        onChanged != null ? onChanged!(value) : null;
      },
      onEditingComplete: onEditingComplete,
      obscureText: obSecure,
      validator: (value) {
        return validate!(value);
      },
      onSaved: onSaved,
      keyboardType: keyboardType,
      cursorColor: UIColor.primary,
      onTap: () {
        onTab != null ? onTab!() : null;
      },
      inputFormatters: [
        LengthLimitingTextInputFormatter(maxDigit),
      ],
      //maxLength: maxDigit,
      decoration: InputDecoration(
        filled: true,
        fillColor: fillColor,
        isDense: true,
        //floatingLabelBehavior: FloatingLabelBehavior.auto,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSize.s12),
          borderSide: BorderSide(
            color: boarderColor,
            width: AppSize.s1_5,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSize.s12),
          borderSide: BorderSide(
            color: UIColor.grey.withOpacity(0.3),
            width: AppSize.s1_5,
          ),
        ),
        contentPadding: EdgeInsets.symmetric(
          vertical: padding!,
          horizontal: AppPadding.p16,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSize.s12),
          borderSide: BorderSide(
            color: UIColor.grey.withOpacity(0.6),
            width: AppSize.s1_5,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSize.s12),
          borderSide: const BorderSide(
            color: Colors.red,
            width: AppSize.s1_5,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSize.s12),
          borderSide: const BorderSide(
            color: Colors.red,
          ),
        ),
        suffixIconColor: UIColor.textFormIconColor,
        focusColor: UIColor.textFormColor,

        prefixIcon: prefix
            ? Padding(
                padding: const EdgeInsets.all(AppPadding.p16),
                child: prefixIcon,
              )
            : null,
        suffixIcon: suffix
            ? Padding(
                padding: const EdgeInsets.all(AppPadding.p16),
                child: InkWell(
                  onTap: suffixOnPressed,
                  child: SvgPicture.asset(
                    suffixIcon!,
                    height: AppSize.s20,
                  ),
                ),
              )
            : null,
        labelText: label,
        hintText: hint,
        labelStyle: const TextStyle(
          color: UIColor.grey,
          fontSize: AppSize.s16,
        ),
        floatingLabelStyle: const TextStyle(
          color: UIColor.primary,
          fontSize: AppSize.s16,
        ),
      ),
    );
  }
}

class PasswordWidget extends StatefulWidget {
  const PasswordWidget({
    super.key,
    required this.title,
    this.controller,
  });
  final String title;
  final TextEditingController? controller;
  @override
  State<PasswordWidget> createState() => _PasswordWidgetState();
}

class _PasswordWidgetState extends State<PasswordWidget> {
  bool visiblePassword = false;
  @override
  Widget build(BuildContext context) {
    return TextFormFieldCustom(
      controller: widget.controller,
      validate: null,
      label: 'Password',
      suffix: true,
      obSecure: visiblePassword,
      suffixIcon:
          visiblePassword ? AppSvg.visiblePassword : AppSvg.invisiblePassword,
      suffixOnPressed: () {
        setState(() {
          visiblePassword = !visiblePassword;
        });
      },
    );
  }
}
