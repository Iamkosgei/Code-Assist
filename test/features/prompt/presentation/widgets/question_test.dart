import 'package:code_assist/features/prompt/presentation/widgets/question.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Question widget test', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: Scaffold(
        body: Question(
          question: 'What is the capital of France?',
        ),
      ),
    ));

    expect(find.text('❓ Question'), findsOneWidget);
    expect(find.text('What is the capital of France?'), findsOneWidget);
  });
}
