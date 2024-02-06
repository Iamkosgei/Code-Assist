const accessToken = "";

extension RemoveEmptyLines on String {
  String? removeEmptyLines() {
    return replaceAll(RegExp(r'(?:[\t ]*(?:\r?\n|\r))+'), '\n');
  }
}
