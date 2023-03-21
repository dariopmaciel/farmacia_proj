import 'package:farmacia_proj/app/core/ui/helpers/size_extensions.dart';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: GenericAppbar(),
      appBar: AppBar(
        toolbarHeight: context.percentHeight(0.08),
        elevation: 2,
        centerTitle: true,
        title: Align(
          child: Image.asset(
            "assets/images/SeuLogoAqui.png",
            width: 150,
          ),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              //
              // SACOLA DE COMPRAS
              //
            },
            icon: const Icon(
              Icons.shopping_bag_outlined,
            ),
          ),
        ],
      ),
      drawer: const Drawer(),
      body: Container(),
    );
  }
}
