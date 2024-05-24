import 'package:flutter/material.dart';
import 'package:restorate/Main2.dart';
import 'main.dart';

class Drinks extends StatelessWidget {
  const Drinks({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        cardTheme: CardTheme(
          color: Color(0xFFF2F0E4), // لون الـ Card
          shape: RoundedRectangleBorder(
            side: BorderSide(color: Colors.blueGrey), // لون الحدود
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          children: [
            Column(
              children: [
                Card(
                  child: Text("-----------------المشروبات-----------------",
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.center),
                ),
                const Divider(color: Colors.blueGrey),
                Pepsi(),
                Pepsi_dit(),
                S_UP(),
                Water(),
                Spero(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
//import 'package:flutter/material.dart';

class Pepsi_dit extends StatefulWidget {
  const Pepsi_dit({Key? key}) : super(key: key);

  @override
  State<Pepsi_dit> createState() => _Pepsi_ditState();
}

class _Pepsi_ditState extends State<Pepsi_dit> {
  String showImage = "Pepsi_dit.jpeg"; // اسم الملف الافتراضي
  Color btnColor = Colors.grey;
  Color btnColor1 = Colors.grey;
  int salary = 0;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        alignment: Alignment.topRight,
        child: Container(
          width: 400,
          height: 190,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "images/$showImage",
                    height: 90,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {
                          setState(() {
                            btnColor = Colors.pink;
                          });
                        },
                        child: Icon(
                          Icons.favorite,
                          color: btnColor,
                          size: 35,
                        ),
                      ),
                      Card(color: Colors.blueGrey,
                        child: Text(
                          "$salary EGP", // عرض السعر
                          style: TextStyle(color: Colors.white,fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                      "بيبسي دايت",
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.right,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    child: Text(
                      "علب",
                      style: TextStyle(fontSize: 10),
                    ),
                    onPressed: () {
                      setState(() {
                        showImage = "Pepsi_dit.jpeg"; // تحديث اسم الملف
                        salary = 45; // تحديث السعر
                      });
                    },
                  ),
                  SizedBox(
                    width: 5,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton.icon(
                    onPressed: () { },
                    icon: Icon(
                      Icons.add,
                      size: 22,
                      color: Colors.white,
                    ),
                    label: Text(
                      "أضف إلى عربة التسوق",
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.all(2),

                      backgroundColor: Colors.grey,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 60,
                  ),
                  ElevatedButton(
                    child: Text(
                      "كانز",
                      style: TextStyle(fontSize: 10),
                    ),
                    onPressed: () {
                      setState(() {
                        showImage = "pepsidit.jpeg"; // تحديث اسم الملف
                        salary = 20;
                      });
                    },
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  ElevatedButton(
                    child: Text(
                      " 1 لتر",
                      style: TextStyle(fontSize: 10),
                    ),
                    onPressed: () {
                      setState(() {
                        showImage = "Pepsr_Dit.jpg"; // تحديث اسم الملف
                        salary = 35; // تحديث السعر
                      });
                      print("45");
                    },
                  ),
                  SizedBox(
                    width: 5,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class Pepsi extends StatefulWidget {
  const Pepsi({Key? key}) : super(key: key);

  @override
  State<Pepsi> createState() => _PepsiState();
}

class _PepsiState extends State<Pepsi> {
  String showImage = "ma.jpeg"; // اسم الملف الافتراضي
  Color btnColor = Colors.grey;
  int salary=0;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        alignment: Alignment.topRight,
        child: Container(
          width: 400,
          height: 190,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "images/$showImage",
                    height: 90,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {
                          setState(() {
                            btnColor = Colors.pink;
                          });
                        },
                        child: Icon(
                          Icons.favorite,
                          color: btnColor,
                          size: 35,
                        ),
                      ),
                      Card(color:
                        Colors.blueGrey,
                        child: Text(
                          "$salary EGP", // عرض السعر
                          style: TextStyle(color: Colors.white,fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                      "بيسبى ",
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.right,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    child: Text(
                      "كانز ",
                      style: TextStyle(fontSize: 10),
                    ),
                    onPressed: () {
                      setState(() {
                        showImage = "can.jpeg"; // تحديث اسم الملف
                        salary=20;
                      });
                    },
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  ElevatedButton(
                    child: Text(
                      "علب ",
                      style: TextStyle(fontSize: 10),
                    ),
                    onPressed: () {
                      setState(() {
                        showImage = "ma.jpeg"; // تحديث اسم الملف
                        salary=45;
                      });
                    },
                  ),
                  SizedBox(
                    width: 5,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.add,
                      size: 22,
                      color: Colors.white,
                    ),
                    label: Text(
                      "أضف الى عربة التسويق",
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(2),
                        backgroundColor: Colors.grey,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        )),
                  ),
                  SizedBox(
                    width: 60,
                  ),
                  ElevatedButton(
                    child: Text(
                      "2 لتر",
                      style: TextStyle(fontSize: 10),
                    ),
                    onPressed: () {
                      setState(() {
                        showImage = "pepsi2.jpg"; // تحديث اسم الملف
                        salary=35;
                      });
                      print("45");
                    },
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  ElevatedButton(
                    child: Text(
                      " 1 لتر ",
                      style: TextStyle(fontSize: 10),

                    ),
                    onPressed: () {
                      setState(() {
                        showImage = "pepsi1.jpeg"; // تحديث اسم الملف
                        salary=25;
                      });
                      print("45");
                    },
                  ),
                  SizedBox(
                    width: 5,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class S_UP extends StatefulWidget {
  const S_UP({Key? key}) : super(key: key);

  @override
  _S_UPState createState() => _S_UPState();
}

class _S_UPState extends State<S_UP> {
  String showImage = "7up.jpeg"; // اسم الملف الافتراضي
  Color btnColor = Colors.grey;
  int salary=0;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        alignment: Alignment.topRight,
        child: Container(
          width: 400,
          height: 200,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "images/$showImage",
                    height: 90,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {
                          setState(() {
                            btnColor = Colors.pink;
                          });
                        },
                        child: Icon(
                          Icons.favorite,
                          color: btnColor,
                          size: 35,
                        ),
                      ),
                      Card(color:
                      Colors.blueGrey,
                        child: Text(
                          "$salary EGP", // عرض السعر
                          style: TextStyle(color: Colors.white,fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                      "سفن اب ",
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.right,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    child: Text(
                      "كانز ",
                      style: TextStyle(fontSize: 10),
                    ),
                    onPressed: () {
                      setState(() {
                        showImage = "7up.jpeg"; // تحديث اسم الملف
                        salary=20;
                      });
                    },
                  ),
                  SizedBox(
                    width: 5,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.add,
                      size: 22,
                      color: Colors.white,
                    ),
                    label: Text(
                      "أضف الى عربة التسويق",
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(2),
                        backgroundColor: Colors.grey,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(200)),
                        )),
                  ),
                  SizedBox(
                    width: 75,
                  ),
                  ElevatedButton(
                    child: Text(
                      "2 لتر",
                      style: TextStyle(fontSize: 10),
                    ),
                    onPressed: () {
                      setState(() {
                        showImage = "7up2.jpeg"; // تحديث اسم الملف
                        salary=35;
                      });
                      print("45");
                    },
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  ElevatedButton(
                    child: Text(
                      " 1 لتر ",
                      style: TextStyle(fontSize: 10),
                    ),
                    onPressed: () {
                      setState(()
                      {
                        showImage = "7up1.jpeg"; // تحديث اسم الملف
                        salary=25;

                      });
                      print("45");
                    },
                  ),
                  SizedBox(
                    width: 5,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Water extends StatefulWidget {
  const Water({super.key});

  @override
  State<Water> createState() => _WaterState();
}

class _WaterState extends State<Water> {
  String showImage = "water1.jpeg"; // اسم الملف الافتراضي
  Color btnColor = Colors.grey;
  int salary=0;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        alignment: Alignment.topRight,
        child: Container(
          width: 400,
          height: 150,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "images/$showImage",
                    height: 90,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {
                          setState(() {
                            btnColor = Colors.pink;
                          });
                        },
                        child: Icon(
                          Icons.favorite,
                          color: btnColor,
                          size: 35,
                        ),
                      ),
                      Card(color:
                      Colors.blueGrey,
                        child: Text(
                          "$salary EGP", // عرض السعر
                          style: TextStyle(color: Colors.white,fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        "مياه",
                        style: TextStyle(fontSize: 20),
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.add,
                      size: 22,
                      color: Colors.white,
                    ),
                    label: Text(
                      "أضف الى عربة التسويق",
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(2),
                        backgroundColor: Colors.grey,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(200)),
                        )),
                  ),
                  SizedBox(
                    width: 65,
                  ),
                  ElevatedButton(
                    child: Text(
                      "كبير",
                      style: TextStyle(fontSize: 10),
                    ),
                    onPressed: () {
                      setState(() {
                        showImage = "Water2.jpeg"; // تحديث اسم الملف
                        salary=20;
                      });
                    },
                  ),
                  SizedBox(
                    width: 17,
                  ),
                  ElevatedButton(
                    child: Text(
                      " صغير",
                      style: TextStyle(fontSize: 10),
                    ),
                    onPressed: () {
                      setState(() {
                        showImage = "water1.jpeg"; // تحديث اسم الملف
                        salary=10;
                      });
                      print("45");
                    },
                  ),
                  SizedBox(
                    width: 5,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Spero extends StatefulWidget {
  const Spero({super.key});

  @override
  State<Spero> createState() => _SperoState();
}

class _SperoState extends State<Spero> {
  String showImage = "Spero.jpeg"; // اسم الملف الافتراضي
  Color btnColor = Colors.grey;
  int salary=15;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        alignment: Alignment.topRight,
        child: Container(
          width: 450,
          height: 250,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "images/$showImage",
                    height: 90,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {
                          setState(() {
                            btnColor = Colors.pink;
                          });
                        },
                        child: Icon(
                          Icons.favorite,
                          color: btnColor,
                          size: 35,
                        ),
                      ),
                      Card(color:
                      Colors.blueGrey,
                        child: Text(
                          "$salary EGP", // عرض السعر
                          style: TextStyle(color: Colors.white,fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "سبيرو سباتس",
                    style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.right,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    child: Text(
                      "شعير",
                      style: TextStyle(fontSize: 10),
                    ),
                    onPressed: () {
                      setState(() {
                        showImage = "sh.jpeg";
                      });
                    },
                  ),
                  SizedBox(
                    width: 17,
                  ),
                  ElevatedButton(
                    child: Text(
                      "توت",
                      style: TextStyle(fontSize: 10),
                    ),
                    onPressed: () {
                      setState(() {
                        showImage = "tot.jpeg";
                      });
                    },
                  ),
                  SizedBox(width: 5),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    child: Text(
                      "برتفال",
                      style: TextStyle(fontSize: 10),
                    ),
                    onPressed: () {
                      setState(() {
                        showImage = "orange.jpeg";
                      });
                    },
                  ),
                  SizedBox(
                    width: 17,
                  ),
                  ElevatedButton(
                    child: Text(
                      " تفاح",
                      style: TextStyle(fontSize: 10),
                    ),
                    onPressed: () {
                      setState(() {
                        showImage = "Apple.jpeg";
                        Text(
                          "50 EG",
                        );
                      });
                      print("45");
                    },
                  ),
                  SizedBox(width: 5),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.add,
                      size: 22,
                      color: Colors.white,
                    ),
                    label: Text(
                      "أضف الى عربة التسويق",
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(2),
                        backgroundColor: Colors.grey,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(200)),
                        )),
                  ),
                  SizedBox(width: 65),
                  ElevatedButton(
                    child: Text(
                      " لمون",
                      style: TextStyle(fontSize: 10),
                    ),
                    onPressed: () {
                      setState(() {
                        showImage = "Lemon.jpeg";
                        Text(
                          "50 EG",
                        );
                      });
                      print("45");
                    },
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                    child: Text(
                      "صودا لمون",
                      style: TextStyle(fontSize: 10),
                    ),
                    onPressed: () {
                      setState(() {
                        showImage = "Soda_Lemon.jpeg";
                        Text(
                          "50 EG",
                        );
                      });
                      print("45");
                    },
                  ),
                  SizedBox(
                    width: 5,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
