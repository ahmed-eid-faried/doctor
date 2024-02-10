extension StringCasingExtension on String {
  String toCapitalized() =>
      length > 0 ? '${this[0].toUpperCase()}${substring(1).toLowerCase()}' : '';
  String toTitleCase() => replaceAll(RegExp(' +'), ' ')
      .split(' ')
      .map((str) => str.toCapitalized())
      .join(' ');

  bool endsWithImage() {
    List<String> image = ["png", "jpg", "webp"];
    var pp = image.map((e) => toLowerCase().endsWith(e)).toList();
    return pp.contains(true) ? true : false;
  }
}
