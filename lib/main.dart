import 'package:egrocery/utils/app_themes.dart';
import 'package:egrocery/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: GoRouter(
        routes: routes,
        // initialLocation: '/onboarding',
        initialLocation: '/home',
      ),
      theme: AppThemes.defaultTheme,
      debugShowCheckedModeBanner: false,
    );
  }
}
