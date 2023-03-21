import 'package:farmacia_proj/app/core/ui/helpers/size_extensions.dart';
import 'package:farmacia_proj/app/core/ui/styles/colors_app.dart';
import 'package:farmacia_proj/app/core/ui/styles/styles_app.dart';
import 'package:farmacia_proj/app/core/ui/widget/confirmation_button.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ColoredBox(
        color: Colors.white,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: context.percentWidth(1),
                  height: context.percentHeight(1),
                  child: Image.asset(
                    "assets/images/farmacia_logo.png",
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
             
          ],
        ),
      ),
    );
  }
}
