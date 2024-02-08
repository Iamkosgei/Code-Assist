import 'package:code_assist/features/prompt/presentation/widgets/hint.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Hint widget test', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: Scaffold(
        body: Hint(
          hint: 'This is a hint for the question.',
        ),
      ),
    ));

    expect(find.text('💡 Hint'), findsOneWidget);
    expect(find.text('This is a hint for the question.'), findsOneWidget);
  });
}
