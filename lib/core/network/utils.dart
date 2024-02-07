const accessToken = "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";

extension RemoveEmptyLines on String {
  String? removeEmptyLines() {
    return replaceAll(RegExp(r'(?:[\t ]*(?:\r?\n|\r))+'), '\n');
  }
}
