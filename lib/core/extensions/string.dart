extension StringExtension on String {
  String toSnakeCase() {
    return replaceAllMapped(RegExp(r'(?<=[a-zA-Z0-9])[A-Z]'), (Match match) {
      return '_${match.group(0)!.toLowerCase()}';
    }).toLowerCase();
  }

  String toCamelCase() {
    List<String> parts = split(RegExp(r'[-_\s]'));
    String camelCaseString = parts.first.toLowerCase();
    for (int i = 1; i < parts.length; i++) {
      camelCaseString += parts[i].capitalize();
    }
    return camelCaseString;
  }

  String toTitleCase() {
    return splitMapJoin(
      RegExp(r'(?<=[a-zA-Z])[A-Z]'),
      onMatch: (match) => ' ${match.group(0)}',
      onNonMatch: (nonMatch) => nonMatch,
    ).capitalize();
  }

  String toKebabCase() {
    return replaceAll(' ', '-').toLowerCase();
  }

  String capitalize() {
    return '${this[0].toUpperCase()}${substring(1)}';
  }
}
