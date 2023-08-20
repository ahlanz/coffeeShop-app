import 'package:coffee_shop/screens/home_page.dart';
import 'package:coffee_shop/screens/started_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const StartedPage(),
        '/home': (context) => const HomePage(),
      },
    );
  }
}
