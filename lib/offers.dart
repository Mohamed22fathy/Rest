import 'package:flutter/material.dart';


class offers extends StatefulWidget {
  const offers({super.key});

  @override
  State<offers> createState() => _offersState();
}

class _offersState extends State<offers> {
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
                  child: Text("-----------------العروض-----------------",
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.center),
                ),
                const Divider(color: Colors.blueGrey),
Sunday(),
                OfferBurger(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


class Sunday extends StatefulWidget {
  const Sunday({super.key});

  @override
  State<Sunday> createState() => _SundayState();
}

class _SundayState extends State<Sunday> {
  String showImage = "zenger.jpeg"; // اسم الملف الافتراضي
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
                      margin: EdgeInsets.all(10),
                      child: Text(
                        "عرض الأحد",
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
                          child: Text(" العرض : بطاطس + صوص +  2 زينجر + 1  بيسبى")),
                    ],
                  ),

                  Row(mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Card(color: Colors.blueGrey,
                        child: RichText(
                            text: const TextSpan(
                              text: "350 EGP",
                              style: TextStyle(
                                fontSize: 15.0,
                                decoration: TextDecoration.lineThrough,
                              ),)),
                      ),

                      Card(color: Colors.blueGrey,
                          child: Text("250 EGP",style: TextStyle(fontSize: 15,color: Colors.white),)),
                    ],
                  ),
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
}class OfferBurger extends StatefulWidget {
  const OfferBurger({Key? key}) : super(key: key);

  @override
  _OfferBurgerState createState() => _OfferBurgerState();
}

class _OfferBurgerState extends State<OfferBurger> {
  String showImage = "Borger.jpeg"; // اسم الملف الافتراضي
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
                      margin: EdgeInsets.all(10),
                      child: Text(
                        "عرض البرجر",
                        style: TextStyle(fontSize: 20),
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        margin: EdgeInsets.all(5),
                        child: Text(
                          "العرض : بطاطس  +  برجر  + 1  بيسبى",
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Card(
                        color: Colors.blueGrey,
                        child: RichText(
                          text: const TextSpan(
                            text: "250 EGP",
                            style: TextStyle(
                              fontSize: 15.0,
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                        ),
                      ),
                      Card(
                        color: Colors.blueGrey,
                        child: Text(
                          "150 EGP",
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {
                      // هنا يمكنك تنفيذ الإجراء الخاص بإضافة العنصر إلى عربة التسوق
                    },
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
                      ),
                    ),
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
