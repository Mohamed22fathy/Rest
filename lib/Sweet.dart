import 'package:flutter/material.dart';
import 'package:restorate/Main2.dart';

class Sweet extends StatelessWidget {
  const Sweet({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          children: [
            Column(
              children: [
                Text("الأطباق الجانية والحلويات",
                    style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.center),
                const Divider(),
                Rice(),
                Pota(),
                soce(),
                Kolslo(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
//بطاطس
class Pota extends StatelessWidget {
  const Pota({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topRight,
      child: Container(
        width: 400,
        height: 200,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image(
                  image: AssetImage("images/po.jpeg"),
                  height: 90,
                ),
                Text("بطاطس",
                    style: TextStyle(fontSize: 20), textAlign: TextAlign.right),

              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  child: Text(
                    "وسط",
                    style: TextStyle(fontSize: 10),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>
                        const Image(image: AssetImage("images/can.jpeg"))));
                  },
                ),
                SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  child: Text(
                    " كبير ",
                    style: TextStyle(fontSize: 10),
                  ),
                  onPressed: () {
                    print("45");
                  },
                ),
                SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  child: Text(
                    "عائلى",
                    style: TextStyle(fontSize: 10),
                  ),
                  onPressed: () {
                    print("45");
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class soce extends StatelessWidget {
  const soce({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topRight,
      child: Container(
        width: 400,
        height: 200,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image(
                  image: AssetImage("images/soce.jpeg"),
                  height: 90,
                ),
                Text("صوص",
                    style: TextStyle(fontSize: 20), textAlign: TextAlign.right),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  child: Text(
                    "صوص جبن ",
                    style: TextStyle(fontSize: 10),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>
                        const Image(image: AssetImage("images/can.jpeg"))));
                  },
                ),
                SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  child: Text(
                    " صوص توميه ",
                    style: TextStyle(fontSize: 10),
                  ),
                  onPressed: () {
                    print("45");
                  },
                ),
                SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  child: Text(
                    "صوص كاتشب",
                    style: TextStyle(fontSize: 10),
                  ),
                  onPressed: () {
                    print("45");
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class S_UP extends StatelessWidget {
  const S_UP({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topRight,
      child: Container(
        width: 400,
        height: 200,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image(
                  image: AssetImage("images/7Updit.jpeg"),
                  height: 90,
                ),
                Text("سفن اب",
                    style: TextStyle(fontSize: 20), textAlign: TextAlign.right),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  child: Text(
                    "علب ",
                    style: TextStyle(fontSize: 10),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const Image(
                            image: AssetImage("images/7up1.jpeg"))));
                  },
                ),
                SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  child: Text(
                    " 1 لتر ",
                    style: TextStyle(fontSize: 10),
                  ),
                  onPressed: () {
                    print("45");
                  },
                ),
                SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  child: Text(
                    "2 لتر",
                    style: TextStyle(fontSize: 10),
                  ),
                  onPressed: () {
                    print("45");
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
//رز
class Rice extends StatelessWidget {
  const Rice({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topRight,
      child: Container(
        width: 400,
        height: 200,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image(
                    image: AssetImage("images/rice.jpeg"),
                    height: 90,
                    alignment: Alignment.bottomLeft),
                Text("أرز",
                    style: TextStyle(fontSize: 20), textAlign: TextAlign.right),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  child: Text(
                    "كبير ",
                    style: TextStyle(fontSize: 10),
                  ),
                  onPressed: () {
                    print("45");
                  },
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  child: Text(
                    " صغير ",
                    style: TextStyle(fontSize: 10),
                  ),
                  onPressed: () {
                    print("45");
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
//كول سلو
class Kolslo extends StatelessWidget {
  const Kolslo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topRight,
      child: Container(
        width: 400,
        height: 200,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image(
                    image: AssetImage("images/colslow.jpeg"),
                    height: 90,
                    alignment: Alignment.bottomLeft),
                Text("كلو سلو",
                    style: TextStyle(fontSize: 20), textAlign: TextAlign.right),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  child: Text(
                    "كبير ",
                    style: TextStyle(fontSize: 10),
                  ),
                  onPressed: () {
                    print("45");
                  },
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  child: Text(
                    " صغير ",
                    style: TextStyle(fontSize: 10),
                  ),
                  onPressed: () {
                    print("45");
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
