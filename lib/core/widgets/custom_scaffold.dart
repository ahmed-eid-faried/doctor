import 'package:doctor/core/constant/color.dart';
import 'package:doctor/core/core/imports/export_path.dart';

class CustomScaffold extends StatelessWidget {
  const CustomScaffold({
    super.key,
    this.floatingActionButton,
    required this.body,
    this.appBar,
    this.backgroundColor = AppColor.white,
    this.extendBodyBehindAppBar = false,
    this.bottomNavigationBar,
    this.extendBody = true,
  });
  final bool extendBodyBehindAppBar;
  final Widget? floatingActionButton;
  final Widget body;
  final PreferredSizeWidget? appBar;
  final Color? backgroundColor;
  final Widget? bottomNavigationBar;
  final bool extendBody;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      backgroundColor: backgroundColor,
      bottomNavigationBar: bottomNavigationBar,
      extendBody: extendBody,
      floatingActionButton: floatingActionButton,
      extendBodyBehindAppBar: extendBodyBehindAppBar,
      resizeToAvoidBottomInset: true,
      body: body,
    );
  }
}
//  GestureDetector(
// onHorizontalDragEnd: (details) {
//   if (details.primaryVelocity! > 0) {
//     Navigator.of(context).pop();
//   }
// },
// child:
// Scaffold(

// body: NotificationListener<ScrollNotification>(
//     onNotification: (scrollNotification) {
//       if (scrollNotification is ScrollEndNotification &&
//           scrollNotification.metrics.pixels ==
//               scrollNotification.metrics.maxScrollExtent) {
//         Navigator.of(context).pop();
//       }
//       return false;
//     },
//     child: ListView(
//       scrollDirection: Axis.horizontal,
// children: [body],
//     )),
// ),
