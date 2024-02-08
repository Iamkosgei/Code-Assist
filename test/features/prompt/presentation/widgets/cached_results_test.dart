import 'package:bloc_test/bloc_test.dart';
import 'package:code_assist/features/prompt/domain/entities/result.dart';
import 'package:code_assist/features/prompt/presentation/blocs/get_cached_results_cubit/get_cached_results_cubit.dart';
import 'package:code_assist/features/prompt/presentation/widgets/cached_result_item.dart';
import 'package:code_assist/features/prompt/presentation/widgets/cached_results.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockGetCachedResultsCubit extends MockCubit<GetCachedResultsState>
    implements GetCachedResultsCubit {}

void main() {
  late List<Result> results;

  setUp(() {
    results = [
      Result(
          id: 1,
          question: 'Question 1',
          steps: ["Step 1", "Step 2"],
          hint: "Hint 1"),
      Result(
          id: 2,
          question: 'Question 2',
          steps: ["Step 1", "Step 2"],
          hint: "Hint 2"),
    ];
  });

  testWidgets('CachedResults widget test', (WidgetTester tester) async {
    final GetCachedResultsCubit mockCubit = MockGetCachedResultsCubit();
    when(() => mockCubit.state)
        .thenReturn(GetCachedResultsLoadedState(results));
    when(() => mockCubit.fetchCachedResults()).thenAnswer((_) async {});
    when(() => mockCubit.toggleShowNewChallengeView()).thenAnswer((_) {});

    await tester.pumpWidget(
      MaterialApp(
        home: BlocProvider<GetCachedResultsCubit>(
          create: (_) => mockCubit,
          child: CachedResults(results: results),
        ),
      ),
    );

    expect(find.text('Saved challenges'), findsOneWidget);
    expect(find.byType(RefreshIndicator), findsOneWidget);
    expect(find.byType(ListView), findsOneWidget);
    expect(find.byType(CachedResultItem), findsNWidgets(results.length));
    expect(find.byType(FloatingActionButton), findsOneWidget);

    await tester.drag(find.byType(RefreshIndicator), const Offset(0.0, 100.0));
    await tester.pumpAndSettle();

    verify(() => mockCubit.fetchCachedResults()).called(1);

    await tester.tap(find.byType(FloatingActionButton));
    await tester.pumpAndSettle();

    verify(() => mockCubit.toggleShowNewChallengeView()).called(1);
  });
}
