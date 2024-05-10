import 'package:doctor/core/constant/color.dart';
import 'package:doctor/core/core/imports/export_path.dart';

class Background extends StatelessWidget {
  const Background({super.key, required this.child, this.appBar});
  final Widget child;

  final PreferredSizeWidget? appBar;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 812.h,
      width: 375.w,
      clipBehavior: Clip.none,
      child: Stack(
        children: [
          Positioned(
            child: Container(
              height: 812.h,
              width: 375.w,
              clipBehavior: Clip.none,
              child: Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      // clipBehavior: Clip.none,
                      decoration: const BoxDecoration(
                        gradient: RadialGradient(
                          center: Alignment.topLeft,
                          radius: 1,
                          colors: [
                            Color(0xB760CDFF),
                            Color(0xffffffff),
                            Color(0xffffffff),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      // clipBehavior: Clip.none,
                      decoration: const BoxDecoration(
                        gradient: RadialGradient(
                          center: Alignment.bottomRight,
                          radius: 1,
                          colors: [
                            AppColor.primaryColor,
                            Color(0xffffffff),
                            Color(0xffffffff),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          appBar == null
              ? Positioned.fill(
                  child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    child,
                  ],
                ))
              : Positioned.fill(
                  child: SingleChildScrollView(
                  physics: const NeverScrollableScrollPhysics(),
                  child: Column(
                    children: [
                      appBar!,
                      child,
                    ],
                  ),
                )),
        ],
      ),
    );
  }
}
