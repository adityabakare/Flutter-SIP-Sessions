import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Demo",
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isSwitched = false;

  void _change(bool value) {
    setState(() {
      isSwitched ? isSwitched = false : isSwitched = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Demo")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              Text("Circle"),
              Switch(
                value: isSwitched,
                onChanged: _change,
              ),
              Text("Square")
            ]),
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  color: isSwitched ? Colors.red : Colors.blue,
                  shape: isSwitched ? BoxShape.rectangle : BoxShape.circle),
            )
          ],
        ),
      ),
    );
  }
}
