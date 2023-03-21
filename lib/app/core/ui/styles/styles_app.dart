import 'package:farmacia_proj/app/core/ui/styles/colors_app.dart';

import 'package:farmacia_proj/app/core/ui/styles/text_styles.dart';
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
        textStyle: TextStyles.i.TextButtonLabel,
      );
}

extension StylesAppExtention on BuildContext {
  StylesApp get stylesApp => StylesApp.i;
}
