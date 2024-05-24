import 'package:flutter/material.dart';
import 'package:restorate/Page_View.dart';
import 'package:restorate/User_Data.dart';
import 'Password.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<FormState> formstate = GlobalKey();

  final TextEditingController userNameController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          children: [
            SafeArea(
              child: Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(20),
                child: Form(
                  key: formstate,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: userNameController,
                        onSaved: (val) {
                          // You can save the value if needed
                        },
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "يجب عليك كتابة الاسم";
                          } else if (!value.endsWith("@gmail.com")) {
                            return "صيغة البريد الإلكتروني غير صحيحة يجب ان تكون gmail.com @";
                          }
                          return null; // إرجاع قيمة null إذا كانت القيمة صحيحة
                        },
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person, color: Colors.black),
                          labelText: 'User Name',
                          hintText: 'Enter Your User Name',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        controller: passwordController,
                        obscureText: !showPassword,
                        onSaved: (val) {
                          // You can save the value if needed
                        },
                        validator: (value) {
                          if (value!.length < 1 || value.length > 10) {
                            return "يجب أن تحتوي كلمة المرور على 1 إلى 10 أحرف";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          // prefixIcon: Icon(Icons.visibility, color: Colors.black),
                          prefixIcon: IconButton(
                            icon: Icon(
                                color: Colors.black,
                                showPassword
                                    ? Icons.visibility_off
                                    : Icons.visibility),
                            onPressed: () {
                              setState(() {
                                showPassword = !showPassword;
                              });
                            },
                          ),
                          border: OutlineInputBorder(),
                          labelText: ' Password ',
                          hintText: 'Enter Your Password',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              child: MaterialButton(
                color: Colors.blueGrey,
                textColor: Colors.white,
                onPressed: () {
                  if (formstate.currentState!.validate()) {
                    formstate.currentState!.save();
                    // Do something with the entered data if needed
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Page_View()),
                    );
                  }
                },
                child: const Text("Click"),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const User_Data()),
                );
              },
              child: Center(
                child:
                    Text("Sign In ?", style: TextStyle(color: Colors.blueGrey)),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ChangePassword()),
                );
              },
              child: Center(
                child: Text("Forget Password ?",
                    style: TextStyle(color: Colors.blueGrey)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
