import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: new HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {
  var num1 = 0, num2 = 0, res = 0;
  String ans = "";
  final TextEditingController t1 = new TextEditingController(text: "");
  final TextEditingController t2 = new TextEditingController(text: "");
  void doAddition() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      res = num1 + num2;
      ans = res.toString();
    });
  }

  void doSubtraction() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      res = num1 - num2;
      ans = res.toString();
    });
  }

  void doMultiplication() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      res = num1 * num2;
      ans = res.toString();
    });
  }

  void doDivision() {
    setState(() {
      var num01, num02;
      double res01;
      num01 = double.parse(t1.text);
      num02 = double.parse(t2.text);
      res01 = num01 / num02;
      ans = res01.toStringAsFixed(2);
    });
  }

  void doClear() {
    setState(() {
      t1.text = "";
      t2.text = "";
      ans = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: new AppBar(
        title: new Text("Calculator"),
      ),
      body: new Container(
        padding: const EdgeInsets.all(20.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "Enter number 1"),
              controller: t1,
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "Enter number 2"),
              controller: t2,
            ),
            new Padding(padding: const EdgeInsets.only(top: 20.0)),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new FloatingActionButton(
                  child: new Text(
                    "+",
                    style: new TextStyle(fontSize: 20.0, color: Colors.white),
                  ),
                  backgroundColor: Colors.purple,
                  onPressed: doAddition,
                ),
                new FloatingActionButton(
                  child: new Text(
                    "-",
                    style: new TextStyle(fontSize: 20.0, color: Colors.white),
                  ),
                  backgroundColor: Colors.lightBlue,
                  onPressed: doSubtraction,
                ),
                new FloatingActionButton(
                  child: new Text(
                    "*",
                    style: new TextStyle(fontSize: 20.0, color: Colors.white),
                  ),
                  backgroundColor: Colors.lightGreen,
                  onPressed: doMultiplication,
                ),
                new FloatingActionButton(
                  child: new Text(
                    "/",
                    style: new TextStyle(fontSize: 20.0, color: Colors.white),
                  ),
                  backgroundColor: Colors.redAccent,
                  onPressed: doDivision,
                )
              ],
            ),
            new Padding(padding: const EdgeInsets.only(top: 10.0)),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new FloatingActionButton(
                  child: new Text(
                    "Clear",
                    style: new TextStyle(color: Colors.white),
                  ),
                  backgroundColor: Colors.orangeAccent,
                  onPressed: doClear,
                ),
              ],
            ),
            new Padding(padding: const EdgeInsets.only(top: 20.0)),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Text(
                  "Result: $ans",
                  style: new TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.red),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
