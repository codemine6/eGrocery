import 'package:cached_network_image/cached_network_image.dart';
import 'package:egrocery/data/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ionicons/ionicons.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final pageController = PageController();
  var currentPage = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(36),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: pageController,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Expanded(
                        child: CachedNetworkImage(
                          imageUrl: onboardings[index].image,
                        ),
                      ),
                      const SizedBox(height: 48),
                      Text(
                        onboardings[index].headline,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      const SizedBox(height: 12),
                      Text(
                        onboardings[index].description,
                        style:
                            TextStyle(color: Theme.of(context).disabledColor),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  );
                },
                itemCount: onboardings.length,
              ),
            ),
            const SizedBox(height: 120),
            Stack(
              alignment: Alignment.center,
              children: [
                TweenAnimationBuilder(
                  tween: Tween<double>(
                    begin: 0,
                    end: (1 / onboardings.length) * currentPage,
                  ),
                  duration: const Duration(seconds: 1),
                  builder: (context, value, child) {
                    return SizedBox(
                      width: 70,
                      height: 70,
                      child: CircularProgressIndicator(
                        value: value,
                        strokeWidth: 6,
                      ),
                    );
                  },
                ),
                IconButton(
                  onPressed: () {
                    if (currentPage == onboardings.length) {
                      context.go('/intro_login');
                    } else {
                      pageController.nextPage(
                        duration: const Duration(seconds: 1),
                        curve: Curves.ease,
                      );
                      setState(() {
                        currentPage++;
                      });
                    }
                  },
                  icon: const Icon(
                    Ionicons.arrow_forward,
                    size: 32,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
