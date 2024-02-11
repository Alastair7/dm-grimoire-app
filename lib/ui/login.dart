import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const TextField(
              decoration: InputDecoration(
                labelText: 'Username',
                border: OutlineInputBorder(),
              ),
            ),
            TextButton(
              child: const Text('Forgot your username?'),
              onPressed: () {
                // TODO: Implement username recovery logic
              },
            ),
            const SizedBox(height: 8.0),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
            TextButton(
              child: const Text('Forgot your password?'),
              onPressed: () {
                // TODO: Implement password recovery logic
              },
            ),
            const SizedBox(height: 24.0),
            ElevatedButton(
              child: const Text('Login'),
              onPressed: () {
                // TODO: Implement login logic
                GoRouter.of(context).go('/home');
                
              },
            ),
            const SizedBox(height: 8.0),
            ElevatedButton(
              child: const Text('Register'),
              onPressed: () {
                // TODO: Implement registration logic
              },
            ),
          ],
        ),
      ),
    );
  }
}