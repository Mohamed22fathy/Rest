import 'package:flutter/material.dart';
import 'package:restorate/Login.dart';
import 'package:restorate/Main2.dart';
import 'package:restorate/main.dart';

class Page_View extends StatefulWidget {
  const Page_View({super.key});

  @override
  State<Page_View> createState() => _Page_ViewState();
}

class _Page_ViewState extends State<Page_View> {
  List ImageName = [
    "images/Welcome.jpeg",
    "images/witer.jpeg",
    "images/Deliver (2).jpeg"
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(backgroundColor: Color(0xFFF2F0E4),
        appBar: AppBar(
          shadowColor: Colors.blue,
          elevation: 10.0,
          leading: IconButton(onPressed: (){
            Navigator.of(context).pop();
          }, icon: Icon(Icons.arrow_back)),
          centerTitle: true,
          title: Text("Hello",),

          backgroundColor: Colors.blueGrey,
        ),
        body: SafeArea(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Container(
                      height: 300,
                      child: PageView.builder(
                          itemCount: ImageName.length,
                          itemBuilder: (context, i) {
                            return Image.asset(ImageName[i], fit: BoxFit.cover);
                          }),
                    ),


  SizedBox(height: 20),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [

                      //pop
                      Container(
                        padding: const EdgeInsets.all(20),
                        child: MaterialButton(
                          color: Colors.blueGrey,
                          textColor: Colors.white,
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => MyApp(),
                            ));
                          },

                          child: const Text("Back"),
                        ),
                      ),
                        Container(
                          padding: const EdgeInsets.all(20),
                          child: MaterialButton(
                            color: Colors.blueGrey,
                            textColor: Colors.white,
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const Main2()));
                            },
                            child: const Text("Start"),
                          ),
                        )



                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
