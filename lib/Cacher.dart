import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restorate/Menu2.dart';
class in_cacher extends StatefulWidget {
  const in_cacher({super.key});

  @override
  State<in_cacher> createState() => _in_cacherState();
}

class _in_cacherState extends State<in_cacher> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFFF2F0E4),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.credit_score),
            label: "تأكيد",
          ),
        ],
      ),
      body: Page_in_restorant(),
    );
  }
}

class Num_Table extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      height: 100,
      alignment: Alignment.bottomCenter,
      margin: EdgeInsets.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Card(color: Colors.blueGrey,
              child: Column(
                children: [
                  Text(
                    "تفاصيل تناول الطعام فى المطعم",
                    textAlign: TextAlign.end,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: ("الرجاء إدخال رقم الطاوله الخاص بك"),
                      prefixIcon: Icon(Icons.table_bar),
                      label: Text("رقم الطاولة"),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Page_in_restorant extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(2),
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Card(
                            // color: Color(0xFFF2F0E4),
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Menu2(),
                                  ),
                                );
                              },
                              child: Center(
                                child: Column(
                                  children: [
                                    Icon(Icons.add_shopping_cart, size: 30),
                                    const Divider(),
                                    Text(
                                      "أضف الأصناف إلى عربة التسوق",
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(2),
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Card(
                            // color: Color(0xFFF2F0E4),
                            child: TextButton(
                              onPressed: () {},
                              child: Center(
                                child: Column(
                                  children: [
                                    Icon(Icons.credit_card, size: 30),
                                    const Divider(),
                                    Text(
                                      "الدفع اونلاين",
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(2),
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Card(
                            // color: Color(0xFFF2F0E4),
                            child: TextButton(
                              onPressed: () {},
                              child: Center(
                                child: Column(
                                  children: [
                                    Icon(Icons.fastfood_sharp, size: 30),
                                    const Divider(),
                                    Text(
                                      "الحصول على إشعار عندما يكون الطلب جاهز",
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const Divider(color: Colors.blueGrey),
              Container(
                width: 500,
                height: 200,
                alignment: Alignment.center,
                margin: EdgeInsets.all(25),
                child: Card(

                  child: Column(
                    children: [
                      Text(
                        "فى اى مطعم ترغب الإختيار منه ؟",
                        textAlign: TextAlign.end,
                      ),
                      Container(
                        child: Column(
                          children: [
                            TextField(
                              decoration: InputDecoration(
                                hintText: ("المدينة"),
                                prefixIcon: Icon(Icons.flag_circle),
                                label: Text("المدينة"),
                              ),
                            ),
                            TextField(
                              decoration: InputDecoration(
                                hintText: ("المطعم"),
                                prefixIcon: Icon(Icons.restaurant_menu),
                                label: Text("المطعم"),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),


            ],
          ),
        ],
      ),
    );
  }
}
