import 'package:doctor/core/core/helper/printfun.dart';
import 'package:flutter/material.dart';
 
class FlipDirection extends StatelessWidget {
  const FlipDirection({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Transform.flip(
      flipX: Directionality.of(context).toString() == "TextDirection.rtl",
      child: child,
    );
  }
}

directionalityFun(BuildContext context) {
  printf(
      "directionality:- ${Directionality.of(context).toString() == "TextDirection.rtl"}");
  return Directionality.of(context).toString() == "TextDirection.rtl";
}
