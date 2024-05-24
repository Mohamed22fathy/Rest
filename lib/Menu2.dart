import 'package:flutter/material.dart';
import 'package:restorate/eat.dart';
import 'package:restorate/Drinks.dart';
import 'package:restorate/Sweet.dart';
import 'package:restorate/main.dart';
import 'package:restorate/offers.dart';

import 'package:restorate/Shopping.dart';

class Menu2 extends StatefulWidget {
  const Menu2({super.key});

  @override
  State<Menu2> createState() => _Menu2State();
}

class _Menu2State extends State<Menu2> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        endDrawer: Drawer(
          child: Container(
            padding: const EdgeInsets.all(10),
            child: ListView(
              children: [
                ListTile(
                  title: const Text("المشروبات"),
                  leading: const Icon(Icons.local_drink_sharp),
                  onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => Drinks(),
                    ));
                  },
                ),
                ListTile(
                  title: const Text("الوجبات"),
                  leading: const Icon(Icons.set_meal_sharp),
                  onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => eat(),
                    ));
                  },
                ),
                ListTile(
                  title: const Text("عروض"),
                  leading: const Icon(Icons.local_offer_sharp),
                  onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => MyApp(),
                    ));
                  },
                ),
                ListTile(
                  title: const Text("الأطباق الجانبية"),
                  leading: const Icon(Icons.dining_sharp),
                  onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => Sweet(),
                    ));
                  },
                ),
                ListTile(
                  title: const Text("الصفحة الرئسيه"),
                  leading: const Icon(Icons.home),
                  onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => MyApp(),
                    ));
                  },
                ),
                ListTile(
                  title: const Text("قائمة المشتريات"),
                  leading: const Icon(Icons.shopping_basket_sharp),
                  onTap: () { Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => Shopping(), ));},
                ),
              ],
            ),
          ),
        ),
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Container(
                child: Tab(
                  child: Container(
                    child: Text("المشروبات",
                        style: TextStyle(color: Colors.black)),
                  ),
                ),
              ),
              Tab(
                child: Container(
                    child:
                        Text("وجبات", style: TextStyle(color: Colors.black))),
              ),
              Tab(
                child: Container(
                    child:
                        Text("العروض", style: TextStyle(color: Colors.black))),
              ),
              Tab(
                child: Container(
                    child: Text("الأطباق الجانية والحلويات",
                        style: TextStyle(color: Colors.black))),
              ),
            ],
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          child: TabBarView(
            children: [
              Drinks(),
              eat(),
              offers(),
              Sweet(),
            ],
          ),
        ),
      ),
    );
  }
}
