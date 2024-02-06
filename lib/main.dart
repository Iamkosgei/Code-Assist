import 'package:code_assist/core/logs/logs.dart';
import 'package:code_assist/core/routing/router.dart';
import 'package:code_assist/core/service_locator/get_it.dart';
import 'package:code_assist/core/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  configureDependencies();
  setUpLoging();
  runApp(const MyApp());
}

final GoRouter appRouter = router();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Code Assist',
      theme: theme,
      themeMode: ThemeMode.light,
      routerConfig: appRouter,
    );
  }
}
