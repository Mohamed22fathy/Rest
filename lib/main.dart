import 'package:flutter/material.dart';
import 'package:restorate/Main2.dart';
import 'package:restorate/Login.dart';
import 'package:restorate/Menu.dart';
import 'package:restorate/Menu2.dart';
import 'package:restorate/Page_View.dart';
import 'package:restorate/offers.dart';
import 'package:restorate/Shopping.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        canvasColor: Color(0xFFF2F0E4),
        drawerTheme: DrawerThemeData(backgroundColor: Color(0xFFF2F0E4)),
        // scaffoldBackgroundColor: Color(0xFFF2F0E4),
        primaryColor: Colors.blue,
        appBarTheme: AppBarTheme(elevation: 10.0,shadowColor: Colors.blue,backgroundColor: Colors.blueGrey,iconTheme: IconThemeData(color: Colors.black),),
        cardTheme: CardTheme(color: Colors.white),
        iconTheme: IconThemeData(color: Colors.black),


        cardColor: Colors.pink,

        textTheme: TextTheme( titleSmall: TextStyle(color: Colors.black) ),
         bottomNavigationBarTheme:BottomNavigationBarThemeData(backgroundColor: Color(0xFFF2F0E4))
      ),
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              "Welcome",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black),
            ),
          ),
          drawer: Drawer(
            child: Container(
              padding: const EdgeInsets.all(10),
              child: ListView(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 60,
                        height: 60,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(60),
                          child: Image.asset(
                            "images/me.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const Expanded(
                        child: ListTile(
                          title: Text("Mohamed Fathy"),
                          subtitle: Text("01098579027"),
                        ),
                      ),
                    ],
                  ),
                  const Divider(), // خط فاصل بين الصورة وبقية العناصر
                  // ListTile(
                  //   title: const Text("اللغة"),
                  //   leading: const Icon(Icons.language),
                  //   onTap: () {},
                  // ),
                  ListTile(
                    title: const Text("تتبع الطلب"),
                    leading: const Icon(Icons.location_on),
                    onTap: () {},
                  ),
                  ListTile(
                    title: const Text("قائمة المشتريات"),
                    leading: const Icon(Icons.shopping_basket_sharp),
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => Shopping()));                    },
                  ),
                  ListTile(
                    title: const Text("عروض"),
                    leading: const Icon(Icons.local_offer),
                    onTap: () { Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const offers()));},
                  ),
                  ListTile(
                    title: const Text("استكشاف القائمة"),
                    leading: const Icon(Icons.menu),
                    onTap: () {  Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const Menu2()));},
                  ),
                  ListTile(
                    title: const Text("الإعدادات"),
                    leading: const Icon(Icons.settings),
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),
          body: MyHomePage(),
        ),
      ),
    );
  }
}
