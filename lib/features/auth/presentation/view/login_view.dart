import 'package:flutter/material.dart';
class LoginView extends StatelessWidget {
  const LoginView({super.key});
 static const String routeName = '/login';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Login View'),
            ElevatedButton(
              onPressed: () {
                // Navigate to the next screen or perform login action
              },
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}