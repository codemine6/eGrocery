import 'package:egrocery/screens/auth/email_login_screen.dart';
import 'package:egrocery/screens/auth/intro_login_screen.dart';
import 'package:egrocery/screens/auth/login_screen.dart';
import 'package:egrocery/screens/home/home_screen.dart';
import 'package:egrocery/screens/onboarding/onboarding_screen.dart';
import 'package:go_router/go_router.dart';

final routes = [
  GoRoute(
    path: '/email_login',
    builder: (context, state) => const EmailLoginScreen(),
  ),
  GoRoute(
    path: '/intro_login',
    builder: (context, state) => const IntroLogin(),
  ),
  GoRoute(
    path: '/login',
    builder: (context, state) => const LoginScreen(),
  ),
  GoRoute(
    path: '/home',
    builder: (context, state) => const HomeScreen(),
  ),
  GoRoute(
    path: '/onboarding',
    builder: (context, state) => const OnboardingScreen(),
  ),
];
