import 'package:flutter/foundation.dart';

printf(dynamic object) {
  if (kDebugMode) {
    debugPrint(object);
  }
}
