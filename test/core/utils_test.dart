import 'package:code_assist/core/utils.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('RemoveEmptyLines extension method', () {
    test('Removes empty lines from a string', () {
      // Arrange
      String input = 'Line 1\n\nLine 2\n\n\nLine 3\n\n\n\nLine 4\n';

      // Act
      String? result = input.removeEmptyLines();

      // Assert
      expect(result, 'Line 1\nLine 2\nLine 3\nLine 4\n');
    });

    test('Returns null when input is null', () {
      // Arrange
      String? input;

      // Act
      String? result = input?.removeEmptyLines();

      // Assert
      expect(result, isNull);
    });

    test('Returns empty string when input is empty', () {
      // Arrange
      String input = '';

      // Act
      String? result = input.removeEmptyLines();

      // Assert
      expect(result, '');
    });
  });
}
