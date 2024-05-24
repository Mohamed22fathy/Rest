import 'package:flutter/material.dart';
import 'Drinks.dart';
import 'Sweet.dart';
import 'eat.dart';
import 'main.dart';
class dRawer extends StatefulWidget {
  const dRawer({super.key});

  @override
  State<dRawer> createState() => _dRawerState();
}

class _dRawerState extends State<dRawer> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold( endDrawer: Drawer(
    child: Container(
    padding: const EdgeInsets.all(10),
    child: ListView(
    children: [
    ListTile(
    title: const Text("المشروبات"),
    leading: const Icon(Icons.local_drink_sharp),
    onTap: () {Navigator.of(context).pushReplacement(MaterialPageRoute(
    builder: (context) => Drinks(), ));},
    ),
    ListTile(
    title: const Text("الوجبات"),
    leading: const Icon(Icons.set_meal_sharp),
    onTap: () {Navigator.of(context).pushReplacement(MaterialPageRoute(
    builder: (context) => eat(), ));},
    ),
    ListTile(
    title: const Text("عروض"),
    leading: const Icon(Icons.local_offer_sharp),
    onTap: () {Navigator.of(context).pushReplacement(MaterialPageRoute(
    builder: (context) => MyApp(), ));},
    ),
    ListTile(
    title: const Text("الأطباق الجانبية"),
    leading: const Icon(Icons.dining_sharp ),
    onTap: () {Navigator.of(context).pushReplacement(MaterialPageRoute(
    builder: (context) => Sweet(), ));},
    ),
    ListTile(
    title: const Text("الصفحة الرئسيه"),
    leading: const Icon(Icons.home),
    onTap: () {
    Navigator.of(context).pushReplacement(MaterialPageRoute(
    builder: (context) => MyApp(), ));


    },
    ),
    ],
    ),
    ),
    ),
    ),);}
}
