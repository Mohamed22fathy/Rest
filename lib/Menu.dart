import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:restorate/Drinks.dart';
import 'package:restorate/Menu2.dart';
import 'package:restorate/Sweet.dart';
import 'package:restorate/eat.dart';
import 'offers.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color(0xFFF2F0E4),
          items: [
            const BottomNavigationBarItem(
              icon: Icon(Icons.credit_score),
              label: "تأكيد",
            )
          ],
          onTap: (val) {
            setState(() {});
          },
        ),
        body: SafeArea(
          child: ListView(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Card(
                      child: Container(
                        width: 100,
                        height: 100,
                        margin: EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Icon(Icons.clean_hands_rounded),
                            Text(
                              "يقوم السائقون بتعقيم ايديهم ",
                              textAlign: TextAlign.end,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Card(
                          child: Container(
                              width: 100,
                              height: 100,
                              margin: EdgeInsets.all(20),
                              child: Column(
                                children: [
                                  Icon(Icons.masks_rounded),
                                  Text(
                                      "يرتدا جميع السائقون الأقنعة و القفازات ",
                                      textAlign: TextAlign.end),
                                ],
                              )),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Card(
                          child: Container(
                              width: 100,
                              height: 100,
                              margin: EdgeInsets.all(20),
                              child: Column(
                                children: [
                                  Icon(Icons.food_bank_rounded),
                                  Text(
                                      "يتم تعقيم جميع الحقائب التوصيل قبل وبعد الطلب "),
                                ],
                              )),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Card(
                          child: Container(
                            margin: EdgeInsets.all(20),
                            child: Column(
                              children: [
                                Icon(Icons.food_bank),
                                Text("يتم ختم الأكياس"),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const Divider(color: Colors.blueGrey),
              Column(
                children: [
                  Card(
                      color: Color(0xFFF2F0E4),
                      child: Text("العروض",
                          textAlign: TextAlign.start,
                          style: TextStyle(color: Colors.black, fontSize: 20))),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Card(
                            margin: EdgeInsets.all(20),
                            child: Column(
                              children: [
                                TextButton(
                                    onPressed: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const offers()));
                                    },
                                    child: Image.asset("images/zenger.jpeg")),
                                TextButton(
                                    style: ButtonStyle(
                                        foregroundColor:
                                            MaterialStateProperty.all(
                                                Colors.white),
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                Colors.blueGrey)),
                                    onPressed: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const offers()));
                                    },
                                    child: Text("شاهد العرض"))
                              ],
                            )),
                        Card(
                            margin: EdgeInsets.all(20),
                            child: Column(
                              children: [
                                TextButton(
                                    onPressed: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const offers()));
                                    },
                                    child: Image.asset(
                                      "images/Borger.jpeg",
                                      height: 180,
                                      width: 250,
                                    )),
                                TextButton(
                                    style: ButtonStyle(
                                        foregroundColor:
                                            MaterialStateProperty.all(
                                                Colors.white),
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                Colors.blueGrey)),
                                    onPressed: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const offers()));
                                    },
                                    child: Text("شاهد العرض"))
                              ],
                            )),
                      ],
                    ),
                  ),
                ],
              ),
              const Divider(color: Colors.blueGrey),
              Column(children: [ Card(
                  color: Color(0xFFF2F0E4),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [ MaterialButton(padding: EdgeInsets.all(5),
                color: Colors.blueGrey,
                textColor: Colors.white,
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Menu2()));
                },
                child: Text("إستكشاف القائمة "),
              ),
                Text("القائمة",
                    textAlign: TextAlign.start,
                    style: TextStyle(color: Colors.black, fontSize: 20)),
              ],
            )),SingleChildScrollView(scrollDirection:Axis.horizontal,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,crossAxisAlignment: CrossAxisAlignment.start,children: [
                Card(child: Column(
                  children: [
                    TextButton(onPressed: (){Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) =>
                            const offers()));},child:SizedBox(
                      width: 80,
                      height: 60,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(60),
                        child: Image.asset(
                          "images/zenger.jpeg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    ),
                    Text("عروض حصريه"),
                  ],),),
                Card(child: Column(
                  children: [
                    TextButton(onPressed: (){Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) =>
                            const Drinks()));},child:SizedBox(
                      width: 80,
                      height: 60,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(60),
                        child: Image.asset(
                          "images/ma.jpeg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    ),
                    Text("مشروبات"),
                  ],),),],),
             Row(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [
               Card(child: Column(
                 children: [
                   TextButton(onPressed: (){Navigator.of(context).push(
                       MaterialPageRoute(
                           builder: (context) =>
                           const eat()));},child:SizedBox(
                     width: 80,
                     height: 60,
                     child: ClipRRect(
                       borderRadius: BorderRadius.circular(30),
                       child: Image.asset(
                         "images/twelve.jpeg",
                         fit: BoxFit.cover,
                       ),
                     ),
                   ),
                   ),
                   Text("وجبات"),
                 ],),) , Card(child: Column(
                 children: [
                   TextButton(onPressed: (){Navigator.of(context).push(
                       MaterialPageRoute(
                           builder: (context) =>
                           const Sweet()));},child:SizedBox(
                     width: 80,
                     height: 60,
                     child: ClipRRect(
                       borderRadius: BorderRadius.circular(30),
                       child: Image.asset(
                         "images/po.jpeg",
                         fit: BoxFit.cover,
                       ),
                     ),
                   ),
                   ),
                   Text("أطباق جانبيه  "),
                 ],),),
             ],) ],),
              

            ],
          ),
        ),
      ),
    );
  }
}
