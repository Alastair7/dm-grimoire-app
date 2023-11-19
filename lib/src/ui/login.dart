import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Login Screen',
      home: LoginScreen(),
    );
  }
}

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
              },
            ),
            const SizedBox(height: 8.0),
            ElevatedButton(
              child: const Text('Register'),
              onPressed: () {
                // Implement registration logic
              },
            ),
          ],
        ),
      ),
    );
  }
}
