import 'package:flutter/material.dart';
import 'package:reza_uii_act1_0534/pantallas0534/panel0534/panel_pantalla0534.dart';

void main() => runApp(MiAppPizza());

class MiAppPizza extends StatelessWidget {
  const MiAppPizza({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Reza Pizzas0534",
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrangeAccent),
          useMaterial3: true),
      home: PanelPantalla0534(),
    );
  }
}
