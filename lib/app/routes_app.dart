import 'package:farmacia_proj/app/pages/splash/splash_page.dart';
import 'package:flutter/material.dart';

class RoutesAPP extends StatelessWidget {
  const RoutesAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Farmacia App",
      routes: {
        "/": (context) => SplashPage(),
        //"/": (context) => const SplashPage(),
      },
    );
  }
}
