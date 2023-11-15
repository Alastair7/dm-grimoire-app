import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Login Screen',
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
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
            const SizedBox(height: 8.0),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 24.0),
            ElevatedButton(
              child: const Text('Login'),
              onPressed: () {
                // Implementar lógica de inicio de sesión
              },
            ),
            TextButton(
              child: const Text('Forgot password?'),
              onPressed: () {
                // Implementar lógica de recuperación de contraseña
              },
            ),
            TextButton(
              child: const Text('Forgot username?'),
              onPressed: () {
                // Implementar lógica de recuperación de usuario
              },
            ),
            const SizedBox(height: 8.0),
            ElevatedButton(
              child: const Text('Register'),
              onPressed: () {
                // Implementar lógica de registro
              },
            ),
          ],
        ),
      ),
    );
  }
}
