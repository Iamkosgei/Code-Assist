import 'package:code_assist/core/routing/routes.dart';
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
        path: resultsPage,
        pageBuilder: (context, state) {
          final result = state.extra as Result;

          return CustomTransitionPage(
            key: state.pageKey,
            child: ResultsPage(
              result: result,
            ),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return ScaleTransition(
                scale: Tween<double>(
                  begin: 0,
                  end: 1,
                ).animate(animation),
                child: child,
              );
            },
          );
        },
      ),
    ],
    initialLocation: promptPage,
  );
}
