import 'package:farmacia_proj/app/core/ui/styles/colors_app.dart';
import 'package:flutter/material.dart';

class StylesApp {
  static StylesApp? _instance;
  // Avoid self isntance

  StylesApp._();

  static StylesApp get i {
    _instance ??= StylesApp._();
    return _instance!;
  }

  ButtonStyle get primaryButton => ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        backgroundColor: ColorsApp.i.primary,
        textStyle: 
      );
}
