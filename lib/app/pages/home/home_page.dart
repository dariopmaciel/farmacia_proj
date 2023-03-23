import 'package:farmacia_proj/app/core/ui/helpers/size_extensions.dart';
import 'package:farmacia_proj/app/core/ui/styles/text_styles.dart';
import 'package:farmacia_proj/app/pages/home/widget/products_class.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? nome = "";
  String? email = "";

  // void initState() {
  //   pegarUser();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        toolbarHeight: context.percentHeight(0.08),
        elevation: 0,
        centerTitle: true,
        title: Align(
          child: Image.asset(
            "assets/images/SeuLogoAqui.png",
            width: 190,
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
              Icons.shopping_basket_outlined,
              color: Colors.grey,
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Usuário: $nome"),
              accountEmail: Text("E-mail: $email"),
              decoration: BoxDecoration(color: Colors.white),
              // currentAccountPicture:
              //     Image.asset("assets/images/MultiComp-LOGO.png"),
            ),
            SingleChildScrollView(
              padding: EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "DADOS DO USUÁRIO",
                    style:
                        context.textStyles.textSemiBold.copyWith(fontSize: 18),
                  ),
                  SizedBox(height: context.percentHeight(0.01)),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: Column(
                      children: [
                        ListTile(
                          title: Text("PERFIL",
                              style: context.textStyles.textRegular
                                  .copyWith(fontSize: 14)),
                          trailing: const Icon(Icons.arrow_forward_ios),
                          onTap: () {},
                        ),
                        ListTile(
                          title: Text("HISTÓRICO",
                              style: context.textStyles.textRegular
                                  .copyWith(fontSize: 14)),
                          trailing: const Icon(Icons.arrow_forward_ios),
                          onTap: () {},
                        ),
                        ListTile(
                          title: Text("FAVORITOS",
                              style: context.textStyles.textRegular
                                  .copyWith(fontSize: 14)),
                          trailing: const Icon(Icons.arrow_forward_ios),
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),
                  //
                  SizedBox(height: context.percentHeight(0.02)),
                  //
                  Text(
                    "DADOS DA CONTA",
                    style: context.textStyles.textBold.copyWith(fontSize: 18),
                  ),
                  SizedBox(height: context.percentHeight(0.01)),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: Column(
                      children: [
                        ListTile(
                          title: Text("CONFIGURAÇÕES",
                              style: context.textStyles.textRegular
                                  .copyWith(fontSize: 14)),
                          trailing: const Icon(Icons.arrow_forward_ios),
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: SizedBox(
                height: 50,
                child: Row(
                  children: <Widget>[
                    Flexible(
                      flex: 2,
                      child: TextFormField(
                        style: const TextStyle(fontSize: 15.0),
                        decoration: const InputDecoration(
                          suffixIcon: Icon(Icons.search, color: Colors.grey),
                          hintText: 'Buscar',
                          hintStyle: TextStyle(fontSize: 15.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //SizedBox(height: context.percentHeight(0.0)),
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Container(
                width: context.percentWidth(1),
                height: context.percentHeight(0.1),
                decoration: BoxDecoration(
                  //color: Colors.white,
                  color: Color(0xffF0EAEA),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ProductsClass(),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                height: context.percentHeight(0.6),
                decoration: BoxDecoration(
                  color: Color(0xffF0EAEA),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Ofertas da Semana",
                        style: context.textStyles.textRegular
                            .copyWith(fontSize: 20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 150,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          //child:,
                        ),
                        Container(
                          height: 150,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          //child:,
                        ),
                        Container(
                          height: 150,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          //child:,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 150,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          //child:,
                        ),
                        Container(
                          height: 150,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          //child:,
                        ),
                        Container(
                          height: 150,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          //child:,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 150,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          //child:,
                        ),
                        Container(
                          height: 150,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          //child:,
                        ),
                        Container(
                          height: 150,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          //child:,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
