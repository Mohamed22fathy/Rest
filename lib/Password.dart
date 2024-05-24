import 'package:flutter/material.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  final GlobalKey<FormState> formstate = GlobalKey();
  final TextEditingController passwordController = TextEditingController();

  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            canvasColor: Color(0xFFF2F0E4),
            drawerTheme: DrawerThemeData(backgroundColor: Color(0xFFF2F0E4)),
            scaffoldBackgroundColor: Color(0xFFF2F0E4),
            primaryColor: Colors.blue,
            appBarTheme: AppBarTheme(
              elevation: 10.0,
              shadowColor: Colors.blue,
              backgroundColor: Colors.blueGrey,
              iconTheme: IconThemeData(color: Colors.black),
            ),
            cardTheme: CardTheme(
              color: Color(0xFFF2F0E4),
            ),
            cardColor: Colors.pink,
            textTheme: TextTheme(titleSmall: TextStyle(color: Colors.black)),
            bottomNavigationBarTheme: BottomNavigationBarThemeData(
                backgroundColor: Color(0xFFF2F0E4))),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              leading: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Icon(Icons.arrow_back)),
              title: const Text(
                "Welcome",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black),
              ),
            ),
            body: ListView(children: [
              SafeArea(
                  child: Center(
                child: Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(20),
                  child: Form(
                    key: formstate,
                    child: Column(
                      children: [
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
                        const Divider(),
                        // خط فاصل بين الصورة وبقية العناصر
                        Column(
                          children: [
                            Text("Cheack a Password again"),
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
                                  labelText: 'New Password ',
                                  hintText: 'Enter Your New Password',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ))
              //Button to correct data from User
              ,
              Container(
                padding: const EdgeInsets.all(20),
                child: MaterialButton(
                  color: Colors.blueGrey,
                  textColor: Colors.white,
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        duration: Duration(seconds: 2),
                        action: SnackBarAction(label: "ok", onPressed: () {}),
                        backgroundColor: Colors.black,
                        content: Text(
                            style: TextStyle(color: Colors.white),
                            "تم التأكيد بنجاح")));
                    // Navigator.of(context)
                    //     .push(MaterialPageRoute(builder: (context) => const MyHomePage()));
                    Navigator.of(context).pop();
                  },
                  child: const Text("تأكيد"),
                ),
              ),
            ])));
  }
}
