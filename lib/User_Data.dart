import 'package:flutter/material.dart';
import 'package:restorate/Main2.dart';
import 'package:restorate/Page_View.dart';
import 'package:restorate/main.dart';
import 'package:restorate/Login.dart';
// import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';


class User_Data extends StatefulWidget {
  const User_Data({super.key});

  @override
  State<User_Data> createState() => _User_DataState();
}

class _User_DataState extends State<User_Data> {
  String? Gender = "Male";
  String? userName = "";
  // String? password = "";
  // int? number = "" as int?;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: ThemeData(

        canvasColor: Color(0xFFF2F0E4),
        drawerTheme: DrawerThemeData(backgroundColor: Color(0xFFF2F0E4)),
        scaffoldBackgroundColor: Color(0xFFF2F0E4),
        primaryColor: Colors.blue,
        appBarTheme: AppBarTheme(elevation: 10.0,
          shadowColor: Colors.blue,
          backgroundColor: Colors.blueGrey,
          iconTheme: IconThemeData(color: Colors.black),),
        cardTheme: CardTheme(color: Color(0xFFF2F0E4),),
        cardColor: Colors.pink,
        textTheme: TextTheme(titleSmall: TextStyle(color: Colors.black)),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
            backgroundColor: Color(0xFFF2F0E4))
    ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(leading: IconButton(onPressed: () {
          Navigator.of(context).pop();
        }, icon: Icon(Icons.arrow_back)),
          title: const Text(
            "Welcome",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black),
          ),
        ),

        body: ListView(
          children: [
            Center(
              child: Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(20),
                child: const TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person, color: Colors.black),
                    labelText: 'User Name',
                    hintText: 'Enter Your Name',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(20),
              child: const TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.visibility_off,
                    color: Colors.black,
                  ),
                  border: OutlineInputBorder(),
                  labelText: ' Password ',
                  hintText: 'Enter Your Password',
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(20),
              child: const TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.phone_android,
                    color: Colors.black,
                  ),
                  border: OutlineInputBorder(),
                  labelText: ' Your Number ',
                  hintText: 'Enter Your Phone Number',
                ),
              ),
            ),
            const Divider(), // خط فاصل بين الصورة وبقية العناصر
            Text("Select Your Gender", style: TextStyle(fontSize: 20)),
            const Divider(), // خط فاصل بين الصورة وبقية العناصر
            Card(
              child: RadioListTile(
                  title: Text("Male"),
                  value: "Male",
                  groupValue: Gender,
                  onChanged: (val) {
                    setState(() {
                      Gender = val;
                    });
                  }),
            ),
            Card(
              child: RadioListTile(
                  title: Text("Female"),
                  value: "Female",
                  groupValue: Gender,
                  onChanged: (val) {
                    setState(() {
                      Gender = val;
                    });
                  }),
            ),
            //Button to correct data from User
            Container(
              padding: const EdgeInsets.all(20),
              child: MaterialButton(
                color: Colors.blueGrey,
                textColor: Colors.white,
                onPressed: () {
                  onpressed:
                  // async() async {
                  //   var sqfliteDataBase;
                  //   var response = await sqfliteDataBase.insertData(
                  //       "INSERT INTO 'CUSTOMER' ('USER_NAME') VALUES('$userName') ,('PASSWORD') VALUES('$password'),('GENTER') VALUES('$Gender'),('NUMBER') VALUES('$number')");
                  // }
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(duration: Duration(seconds: 2),
                      action: SnackBarAction(label: "ok", onPressed: () {}),
                      backgroundColor: Colors.black,
                      content: Text(style: TextStyle(color: Colors.white),
                          "تم التأكيد بنجاح")));
                  // Navigator.of(context)
                  //     .push(MaterialPageRoute(builder: (context) => const MyHomePage()));
                  Navigator.of(context).pop();
                },
                child: const Text("تأكيد"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
