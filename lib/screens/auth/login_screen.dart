import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ionicons/ionicons.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 120,
              child: CachedNetworkImage(
                imageUrl: 'https://i.imgur.com/9EsY2t6.png',
              ),
            ),
            const SizedBox(height: 24),
            Text(
              'Welcome to our',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Text(
              'eGrocery',
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 120),
            ElevatedButton(
              onPressed: () => context.push('/email_login'),
              style: ElevatedButton.styleFrom(
                foregroundColor: Theme.of(context).canvasColor,
                backgroundColor: Theme.of(context).primaryColor,
                minimumSize: const Size.fromHeight(48),
              ),
              child: const Text('Login With Email'),
            ),
            const SizedBox(height: 24),
            const Text(
              'OR',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  style: IconButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.transparent,
                    minimumSize: const Size.square(48),
                    iconSize: 28,
                    side: const BorderSide(color: Colors.black),
                  ),
                  icon: const Icon(Ionicons.logo_apple),
                ),
                const SizedBox(width: 16),
                IconButton(
                  onPressed: () {},
                  style: IconButton.styleFrom(
                    foregroundColor: Colors.red,
                    backgroundColor: Colors.transparent,
                    minimumSize: const Size.square(48),
                    iconSize: 28,
                    side: const BorderSide(color: Colors.red),
                  ),
                  icon: const Icon(Ionicons.logo_google),
                ),
                const SizedBox(width: 16),
                IconButton(
                  onPressed: () {},
                  style: IconButton.styleFrom(
                    foregroundColor: Colors.lightBlue,
                    backgroundColor: Colors.transparent,
                    minimumSize: const Size.square(48),
                    iconSize: 28,
                    side: const BorderSide(color: Colors.lightBlue),
                  ),
                  icon: const Icon(Ionicons.logo_twitter),
                ),
                const SizedBox(width: 18),
                IconButton(
                  onPressed: () {},
                  style: IconButton.styleFrom(
                    foregroundColor: Colors.lightBlue[900],
                    backgroundColor: Colors.transparent,
                    minimumSize: const Size.square(48),
                    iconSize: 28,
                    side: BorderSide(color: Colors.lightBlue[900]!),
                  ),
                  icon: const Icon(Ionicons.logo_facebook),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
