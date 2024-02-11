import 'package:dm_grimoire_app/ui/dice.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:dm_grimoire_app/ui/home.dart';

import 'ui/login.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'DM Grimoire',
      routerConfig: router,
    );
  }

  final GoRouter router = GoRouter(initialLocation: '/login', routes:[
    GoRoute(path: "/home", builder:((context, state) => const HomePage())),
    GoRoute(path: "/login", builder:((context, state) => const LoginScreen())),
    GoRoute(path: "/dice", builder:((context, state) => const DiceScreen())),
  ]);
}
