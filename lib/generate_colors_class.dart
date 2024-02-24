import 'package:doctor/core/extensions/string.dart';
import 'package:flutter/material.dart';
import 'package:colornames/colornames.dart';

class ColorUtils {
  static Color hexToColor(String code) {
    return Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
  }

  static String generateColorClass(String input) {
    final lines = input.split('\n');
    final colors = <String>[];
    int numColors = 1;
    for (var line in lines) {
      if (line.isNotEmpty && line[0] == '#') {
        final parts = line.split('RGB: ')[0].split('#');
        if (parts.length == 2) {
          // final name = 'color${colors.length + 1}';
          final colorValue = parts[1].trim();
          var str = "0xFF$colorValue";
          final name = ColorNames.guess(Color(int.parse(str))).toCamelCase();

          for (var element in colors) {
            if (element.contains(name)) numColors++;
          }
          colors.add(
              'static const Color $name${numColors == 1 ? "" : numColors} = Color(0xFF$colorValue);');
        }
      }

      numColors = 1;
    }

    final classString = """
      class AppColors {
        ${colors.join('\n        ')}
      }
    """;

    return classString;
  }
}

// void main(List<String> args) {
//   const input = '''
// Scan Current Page
// Scan All Pages
// #ffffff
// RGB: 255, 255, 255
// 491
// Select
// #000000
// RGB: 0, 0, 0
// 397
// Select
// #667394
// RGB: 102, 115, 148
// 333
// Select
// #0dbf80
// RGB: 13, 191, 128
// 224
// Select
// #212121
// RGB: 33, 33, 33
// 191
// Select
// #f5d161
// RGB: 245, 209, 97
// 80
// Select
// #333333
// RGB: 51, 51, 51
// 79
// Select
// #0dbf7d
// RGB: 13, 191, 125
// 42
// Select
// #61cfff
// RGB: 97, 207, 255
// 33
// Select
// #858fa8
// RGB: 133, 143, 168
// 24
// Select
// #ff0000
// RGB: 255, 0, 0
// 21
// Select
// #5780a6
// RGB: 87, 128, 166
// 20
// Select
// #e3e6eb
// RGB: 227, 230, 235
// 18
// Select
// #cce3ff
// RGB: 204, 227, 255
// 14
// Select
// #c7f0e6
// RGB: 199, 240, 230
// 12
// Select
// #d9d9d9
// RGB: 217, 217, 217
// 10
// Select
// #ff5c61
// RGB: 255, 92, 97
// 8
// Select
// #29ccb0
// RGB: 41, 204, 176
// 8
// Select
// #0d0a0a
// RGB: 13, 10, 10
// 4
// Select
// #c4c4c4
// RGB: 196, 196, 196
// 4
// Select
// #4a708f
// RGB: 74, 112, 143
// 4
// Select
// #99e6fc
// RGB: 153, 230, 252
// 4
// Select
// #61dbfa
// RGB: 97, 219, 250
// 4
// Select
// #ffbd87
// RGB: 255, 189, 135
// 4
// Select
// #f2faff
// RGB: 242, 250, 255
// 4
// Select
// #def5fc
// RGB: 222, 245, 252
// 4
// Select
// #faf7f7
// RGB: 250, 247, 247
// 3
// Select
// #d1cfe8
// RGB: 209, 207, 232
// 3
// Select
// #b3e69e
// RGB: 179, 230, 158
// 3
// Select
// #f7f2f2
// RGB: 247, 242, 242
// 3
// Select
// #949cb5
// RGB: 148, 156, 181
// 3
// Select
// #cccccc
// RGB: 204, 204, 204
// 3
// Select
// #73c2ff
// RGB: 115, 194, 255
// 3
// Select
// #fa0030
// RGB: 250, 0, 48
// 3
// Select
// #f2f2f5
// RGB: 242, 242, 245
// 2
// Select
// #ffd1a3
// RGB: 255, 209, 163
// 2
// Select
// #faf5f5
// RGB: 250, 245, 245
// 2
// Select
// #ffdb57
// RGB: 255, 219, 87
// 2
// Select
// #ffba24
// RGB: 255, 186, 36
// 2
// Select
// #ff4a4a
// RGB: 255, 74, 74
// 2
// Select
// #e83340
// RGB: 232, 51, 64
// 2
// Select
// #edf2f7
// RGB: 237, 242, 247
// 2
// Select
// #bdeb73
// RGB: 189, 235, 115
// 2
// Select
// #a8e8f0
// RGB: 168, 232, 240
// 2
// Select
// #fa0000
// RGB: 250, 0, 0
// 2
// Select
// #e8b02b
// RGB: 232, 176, 43
// 2
// Select
// #e8f7f2
// RGB: 232, 247, 242
// 1
// Select
// #fcfcfc
// RGB: 252, 252, 252
// 1
// Select
// #546387
// RGB: 84, 99, 135
// 1
// Select
// #f5faff
// RGB: 245, 250, 255
// 1
// Select
// #bfd9fa
// RGB: 191, 217, 250
// 1
// Select
// #ded9ed
// RGB: 222, 217, 237
// 1
// Select
// #03915e
// RGB: 3, 145, 94
// 1
// Select
// #ccd9db
// RGB: 204, 217, 219
// 1
// Select
// #dbe3db
// RGB: 219, 227, 219
// 1
// Select
// #666666
// RGB: 102, 102, 102
// 1
// Select
// #b0b0b0
// RGB: 176, 176, 176
// 1
// Select
// #0f7887
// RGB: 15, 120, 135
// 1
// Select
// #ed4d54
// RGB: 237, 77, 84
// 1
// Select
// #fad14d
// RGB: 250, 209, 77
// 1
// Select
// #086673
// RGB: 8, 102, 115
// 1
// Select
// #99d63b
// RGB: 153, 214, 59
// 1
// Select
// #70d9e6
// RGB: 112, 217, 230
// 1
// Select
// #63bafc
// RGB: 99, 186, 252
// 1
// Select
// #30a6fa
// RGB: 48, 166, 250
// 1
// Select
// #f0e3de
// RGB: 240, 227, 222
// 1
// Select
// #f2994a
// RGB: 242, 153, 74
// 1
// Select
// #57ccf2
// RGB: 87, 204, 242
// 1
// Select
// #219654
// RGB: 33, 150, 84
// 1
// Select
// #eb5757
// RGB: 235, 87, 87
// 1
// Select
// #52bdfa
// RGB: 82, 189, 250
// 1
// Select
// #ff6142
// RGB: 255, 97, 66
// 1
// Select
// #ff4f24
// RGB: 255, 79, 36
// 1
// Select
// #ffc280
// RGB: 255, 194, 128
// 1
// Select
// #ffcf99
// RGB: 255, 207, 153
// 1
// Select
// #45a3ed
// RGB: 69, 163, 237
// 1
// Select
// #ffd93b
// RGB: 255, 217, 59
// 1
// Select
// #f5c433
// RGB: 245, 196, 51
// 1
// Select
// #fafafa
// RGB: 250, 250, 250
// 1
// Select
// #0dc78f
// RGB: 13, 199, 143
// 1
// Select
// #f05ca8
// RGB: 240, 92, 168
// 1
// Select
// #2e9cdb
// RGB: 46, 156, 219
// 1
// Select

// ''';
//   final colorClass = ColorUtils.generateColorClass(input);

//   debugdebugPrint("colorClass:- \n$colorClass");
// }

//  //
// void main() {
//   final MaterialAccentColor color = Colors.blueAccent;
//   debugPrint(color.colorName); // Blue De France
//   debugPrint(ColorNames.guess(Color(0xFFFF9E47))); // Yellow Orange
//   debugPrint(0xf3f0f0.colorName); // Seashell
// }
