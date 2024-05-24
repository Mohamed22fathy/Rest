import 'package:flutter/material.dart';

class eat extends StatelessWidget {
  const  eat ({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
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
                  child: Text("-----------------الوجبات-----------------",
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.center),
                ),
                const Divider(color: Colors.blueGrey),
        six()
,Nine(),
                Twelve(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
//ست قطع
class six extends StatefulWidget {
  const six({super.key});

  @override
  State<six> createState() => _sixState();
}

class _sixState extends State<six> {
  String showImage = "six.jpeg"; // اسم الملف الافتراضي
  Color btnColor = Colors.grey;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        alignment: Alignment.topRight,
        child: Container(
          width: 500,
          height: 200,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    "images/$showImage",
                    height: 90,
                  ),
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
                  Container(
                    margin: EdgeInsets.all(5),
                    child: Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        "كلاسيك باكت 6 قطع",
                        style: TextStyle(fontSize: 20),
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment .end,
                    children: [
                      Container(margin: EdgeInsets.all(5),
                          child: Text(" العرض : 6 قطع دجاج +  2 خبز + 1 بيسبى")),
                    ],
                  ),
                  Card(color: Colors.blueGrey,
                      child: Text("250 EGP",style: TextStyle(color: Colors.white),)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
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
                        backgroundColor: Colors.blueAccent,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(200)),
                        )),
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
//تسع قطع
class Nine extends StatefulWidget {
  const Nine({super.key});

  @override
  State<Nine> createState() => _NineState();
}

class _NineState extends State<Nine> {
  String showImage = "nine.jpeg"; // اسم الملف الافتراضي
  Color btnColor = Colors.grey;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        alignment: Alignment.topRight,
        child: Container(
          width: 500,
          height: 220,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    "images/$showImage",
                    height: 90,
                  ),
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
                  Container(
                    margin: EdgeInsets.all(5),
                    child: Container(
                      margin: EdgeInsets.all(5),
                      child: Text(
                        " باكت 9 قطع",
                        style: TextStyle(fontSize: 20),
                        textAlign: TextAlign.right,
                      ),
                      ),
                  ),
                ],
              ),
              Column(
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment .end,
                    children: [
                      Container(margin: EdgeInsets.all(5),
                          child: Text(" العرض : 9 قطع دجاج +  3 خبز ")),
                    ],
                  ),
                  Card(color: Colors.blueGrey,
                      child: Text("350 EGP",style: TextStyle(color: Colors.white),)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
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
                        backgroundColor: Colors.blueAccent,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(200)),
                        )),
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
//ااتناشر قطع
class Twelve extends StatefulWidget {
  const Twelve({super.key});

  @override
  State<Twelve> createState() => _TwelveState();
}

class _TwelveState extends State<Twelve> {

  String showImage = "twelve.jpeg"; // اسم الملف الافتراضي
  Color btnColor = Colors.grey;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        alignment: Alignment.topRight,
        child: Container(
          width: 500,
          height: 200,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    "images/$showImage",
                    height: 90,
                  ),
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
                  Container(
                    margin: EdgeInsets.all(1),
                    child: Text(
                      "كلاسيك باكت 12 قطع",
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.right,
                    ),
                    ),
                ],
              ),
              Column(
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment .end,
                    children: [
                      Container(margin: EdgeInsets.all(5),
                          child: Text(" العرض : 12 قطع دجاج +  4 خبز +2 علب بيسبى")),
                    ],
                  ),
                  Card(color: Colors.blueGrey,
                      child: Text("450 EGP",style: TextStyle(color: Colors.white),)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
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
                        backgroundColor: Colors.blueAccent,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(200)),
                        )),
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
