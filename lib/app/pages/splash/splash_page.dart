import 'package:farmacia_proj/app/core/ui/styles/colors_app.dart';
import 'package:farmacia_proj/app/core/ui/styles/styles_app.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
            backgroundColor: Colors.white,
            elevation: 0,
            centerTitle: true,
            iconTheme: IconThemeData(color: Colors.black)),
        primaryColor: ColorsApp.i.primary,
        colorScheme: ColorScheme.fromSeed(
          seedColor: ColorsApp.i.primary,
          primary: Colors.grey,
          secondary: ColorsApp.i.secondary,
        ),
        elevatedButtonTheme:
            ElevatedButtonThemeData(style: StylesApp.i.primaryButton),
        inputDecorationTheme: InputDecorationTheme(
          fillColor: Colors.white,
          filled: true,
          isDense: true,
          contentPadding: const EdgeInsets.all(12),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.grey),
          ),
        ),
      ),
      child: Scaffold(
        appBar: AppBar(title: const Text('Splash Page')),
        body: Center(
            child: Column(
          children: [
            Container(),
            ElevatedButton(onPressed: () {}, child: Text("TEXTE")),
            TextFormField(),
          ],
        )),
      ),
    );
  }
}
