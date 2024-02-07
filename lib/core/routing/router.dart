import 'package:code_assist/core/routing/routes.dart';
import 'package:code_assist/features/intro/presentation/welcome_page.dart';
import 'package:code_assist/features/prompt/domain/entities/result.dart';
import 'package:code_assist/features/prompt/presentation/prompt_page.dart';
import 'package:code_assist/features/prompt/presentation/results_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();

GoRouter router() {
  return GoRouter(
    navigatorKey: _rootNavigatorKey,
    routes: [
      GoRoute(
        path: promptPage,
        builder: (context, state) => const PromptPage(),
      ),
      GoRoute(
        path: welcomePage,
        builder: (context, state) => const WelcomePage(),
      ),
      GoRoute(
        path: resultsPage,
        builder: (context, state) {
          final result = state.extra as Result;
          return ResultsPage(
            result: result,
          );
        },
      ),
    ],
    initialLocation: welcomePage,
  );
}
