import 'package:doctor/core/core/local/cache_helper.dart';

class AppConstants {
  static double height = 812;
  static double width = 375;
  static const String token = '';
  static String country = '';
  static String currency = '';
  static bool language = CacheHelper.get(key: 'ARABIC') ?? false;
  // static bool onBoarding = false;
}
