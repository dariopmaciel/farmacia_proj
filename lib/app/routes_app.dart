import 'package:farmacia_proj/app/core/ui/theme/theme_config.dart';
import 'package:farmacia_proj/app/pages/home/home_page.dart';

import 'package:farmacia_proj/app/pages/splash/splash_page.dart';
import 'package:flutter/material.dart';

class RoutesAPP extends StatelessWidget {
  const RoutesAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Farmacia App",
      theme: ThemeConfig.theme,
      routes: {
        "/": (context) => SplashPage(),
        "/HomePage": (context) => const HomePage(),
      },
    );
  }
}
