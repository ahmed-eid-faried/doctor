import 'package:doctor/core/core/imports/export_path.dart';

import 'background.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Background(child: Center(child: Text("data"))));
  }
}
