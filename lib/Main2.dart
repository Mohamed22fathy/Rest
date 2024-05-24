import 'package:flutter/material.dart';
import 'package:restorate/Sweet.dart';
import 'package:restorate/eat.dart';
import 'package:restorate/in_restorant.dart';
import 'package:restorate/Cacher.dart';
import 'package:restorate/Menu.dart';
import 'package:restorate/main.dart';
import 'package:restorate/Shopping.dart';
import 'package:restorate/Drinks.dart';
import 'package:restorate/offers.dart';
import 'package:restorate/Sweet.dart';

class Main2 extends StatefulWidget {
  const Main2({super.key});

  @override
  State<Main2> createState() => _Main2State();
}

class _Main2State extends State<Main2> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
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
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => Drinks()));
                  },
                ),
                ListTile(
                  title: const Text("الوجبات"),
                  leading: const Icon(Icons.set_meal_sharp),
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => eat()));
                  },
                ),
                ListTile(
                  title: const Text("عروض"),
                  leading: const Icon(Icons.local_offer_sharp),
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => offers()));
                  },
                ),
                ListTile(
                  title: const Text("الأطباق الجانبية"),
                  leading: const Icon(Icons.dining_sharp),
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => Sweet()));
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
                  onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => Shopping(),
                    ));
                  },
                ),
              ],
            ),
          ),
        ),
        appBar: AppBar(
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    showSearch(context: context, delegate: searchdelegate());
                  },
                  icon: Icon(Icons.search),
                ),
                // endDrawer button
                Builder(
                  builder: (BuildContext context) {
                    return IconButton(
                      onPressed: () {
                        Scaffold.of(context).openEndDrawer();
                      },
                      icon: Icon(Icons.menu),
                    );
                  },
                ),
              ],
            )
          ],
          bottom: TabBar(
            tabs: [
              Container(
                child: Tab(
                  child: Container(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset(
                        "images/deliver.jpeg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Column(
                      children: [
                        Image.asset(
                          "images/in restorant.png",
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset(
                      "images/caher.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          child: TabBarView(
            children: [
              Menu(),
              in_restorant(),
              in_cacher(),
            ],
          ),
        ),
      ),
    );
  }
}

class searchdelegate extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = " ";
          },
          icon: Icon(Icons.arrow_back))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: Icon(Icons.close));
  }

  @override
  Widget buildResults(BuildContext context) {
    return Text("");
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Text("");
  }
}
