//caracteristica singleton
import 'package:flutter/material.dart';

class ColorsApp {
  static ColorsApp? _instance;

  ColorsApp._();

  static ColorsApp get i {
    _instance ??= ColorsApp._();
    return _instance!;
  }

  Color get primary => const Color(0xff3EBE71);
  Color get secondary => const Color(0xffF0EAEA);
  //se fizer só isto, antes do return
  //Theme.of(context).primaryColor;
}


extension ColorsAppExcentions on BuildContext {
  ColorsApp get colors => ColorsApp.i;
  //se fizer, antes do return
  //contect.colors.primary;
}
