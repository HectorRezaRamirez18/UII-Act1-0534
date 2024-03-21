import 'package:flutter/material.dart';
import 'package:reza_uii_act1_0534/pantallas0534/panel0534/widgets0534/item_pizzas0534.dart';

class PanelPantalla0534 extends StatelessWidget {
  const PanelPantalla0534({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffb73c0c),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu,
            color: Colors.white,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 25),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://raw.githubusercontent.com/HectorRezaRamirez18/Img_FlutterFlow_IOS_6J/main/Act12NavBar_FlutterFlow/pizz1.png"),
            ),
          )
        ],
        title: const Text(
          'Reza Pizzas0534',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(15),
            padding: EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Color(0xffc15c5c),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 5),
                      color: Theme.of(context)
                          .colorScheme
                          .primary
                          .withOpacity(0.1),
                      spreadRadius: 5,
                      blurRadius: 5)
                ]),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Buscar Pizzas",
                  hintStyle: TextStyle(
                      fontWeight: FontWeight.w300, color: Colors.white),
                  border: InputBorder.none,
                  prefix: Icon(
                    Icons.search,
                    color: Colors.white,
                  )),
            ),
          ),
          Container(
            height: 180,
            margin: const EdgeInsets.all(15),
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://raw.githubusercontent.com/HectorRezaRamirez18/Img_FlutterFlow_IOS_6J/main/pixfondo.png"))),
          ),
          ListTile(
            title: Text("Top Pizzas"),
            titleTextStyle: Theme.of(context).textTheme.titleLarge,
            trailing: Icon(Icons.filter_list_outlined),
          ),
          Expanded(
              child: GridView.count(
            crossAxisCount: 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 15,
            children: [for (int i = 1; i <= 10; i++) const Itempizza()],
          ))
        ],
      ),
    );
  }
}
