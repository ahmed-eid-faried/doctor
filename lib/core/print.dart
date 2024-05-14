import 'package:doctor/core/core/imports/export_path.dart';

class Print {
  static response(dynamic response, String title, {String? body}) {
    if (kDebugMode) {
      print(
          "=============================================================================");
      print(
          "====================================$title===================================");
      print(body);
      print(response);
      print(
          "====================================$title===================================");
      print(
          "=============================================================================");
    }
  }

  static line(String text) {
    if (kDebugMode) {
      print(
          "====================================$text===================================");
    }
  }
}
