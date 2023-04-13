import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ionicons/ionicons.dart';

class EmailLoginScreen extends StatefulWidget {
  const EmailLoginScreen({super.key});

  @override
  State<EmailLoginScreen> createState() => _EmailLoginScreenState();
}

class _EmailLoginScreenState extends State<EmailLoginScreen> {
  var obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
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
              const SizedBox(height: 24),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Email or Phone'),
                  const SizedBox(height: 8),
                  const TextField(),
                  const SizedBox(height: 16),
                  const Text('Password'),
                  const SizedBox(height: 8),
                  TextField(
                    decoration: InputDecoration(
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            obscurePassword = !obscurePassword;
                          });
                        },
                        child: Icon(obscurePassword
                            ? Ionicons.eye_outline
                            : Ionicons.eye_off_outline),
                      ),
                    ),
                    obscureText: obscurePassword,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child: const Text('Forgot Password?'),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () => context.go('/home'),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Theme.of(context).canvasColor,
                  backgroundColor: Theme.of(context).primaryColor,
                  minimumSize: const Size.fromHeight(48),
                ),
                child: const Text('Login'),
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Don\'t have account?'),
                  TextButton(
                    onPressed: () {},
                    child: const Text('Sign Up'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
