import 'package:flutter/material.dart';

extension SizeExtentions on BuildContext {
  double get screenWidth => MediaQuery.of(this).size.width;
  double get screenHeight => MediaQuery.of(this).size.height;

  double percentWidth(double percent) => screenWidth * percent;
  double percentHeight(double percent) => screenHeight * percent;
}

//width: context.percentWidth(0.5),
//height: context.percentHeight(0.5),

// text(context.screenWidth.toString),
// text(MediaQuery.of(context).size.width.toString),