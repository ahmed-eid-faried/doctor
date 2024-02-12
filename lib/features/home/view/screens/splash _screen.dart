import 'package:doctor/core/core/imports/export_path.dart';

class Background extends StatelessWidget {
  const Background({super.key, required this.child});
  final Widget child;
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
                            Color(0x4C0EBE7E),
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
          Positioned.fill(child: child),
        ],
      ),
    );
  }
}
