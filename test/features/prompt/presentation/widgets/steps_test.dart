import 'package:code_assist/features/prompt/presentation/widgets/steps.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter/material.dart';

void main() {
  testWidgets(
    'Steps widget test',
    (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(
        home: Scaffold(
          body: Steps(
            steps: ['Step 1', 'Step 2', 'Step 3'],
          ),
        ),
      ));

      expect(find.text('📝 Need more ? Expand to see steps.'), findsOneWidget);
      expect(find.byIcon(Icons.expand_more), findsOneWidget);

      await tester.tap(find.byIcon(Icons.expand_more));
      await tester.pumpAndSettle();

      expect(find.text('Steps 0/3'), findsOneWidget);
      expect(find.text('1 . Step 1'), findsOneWidget);
      expect(find.text('2 . Step 2'), findsOneWidget);
      expect(find.text('3 . Step 3'), findsOneWidget);

      await tester.tap(find.byType(Checkbox).first);
      await tester.pumpAndSettle();

      expect(find.text('1 . Step 1'), findsOneWidget);
      final textStyle = tester.widget<Text>(find.text('1 . Step 1')).style;
      expect(textStyle?.decoration, TextDecoration.lineThrough);

      await tester.tap(find.byType(Checkbox).last);
      await tester.tap(find.byType(Checkbox).at(1));

      await tester.pumpAndSettle();

      expect(find.text('Steps 3/3'), findsOneWidget);
      expect(find.text('1 . Step 1'), findsOneWidget);
      expect(find.text('2 . Step 2'), findsOneWidget);
      expect(find.text('3 . Step 3'), findsOneWidget);
    },
  );
}
