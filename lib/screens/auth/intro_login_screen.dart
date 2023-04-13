import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class IntroLogin extends StatelessWidget {
  const IntroLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CachedNetworkImage(imageUrl: 'https://i.imgur.com/YQ9twZx.png'),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                colors: [Colors.transparent, Colors.black.withOpacity(.5)],
              ),
            ),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
          Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 120),
                Text(
                  'Welcome to our',
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                Text(
                  'eGrocery',
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 32,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Spacer(),
                ElevatedButton(
                  onPressed: () => context.push('/login'),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Theme.of(context).canvasColor,
                    backgroundColor: Theme.of(context).primaryColor,
                    minimumSize: const Size.fromHeight(48),
                  ),
                  child: const Text('Continue with Email or Phone'),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(48),
                  ),
                  child: const Text('Create an account'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
