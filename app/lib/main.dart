import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatefulWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  String data = "Ahmad";

  Widget body() {
    return Container(
        padding: const EdgeInsets.all(8.0),
        child: new Center(
            child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(data,
                style: new TextStyle(
                  fontSize: 22.0,
                )),
            ElevatedButton(
                //style: new TextStyle(fontSize:22.0),
                onPressed: () {
                  setState(() {
                    if (data.startsWith("A")) {
                      data = "Shazib Bhai";
                    } else {
                      data = "Ahmad";
                    }
                  });
                },
                child: new Text('Button'))
          ],
        )));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "My app",
        home: new Scaffold(
          appBar: new AppBar(title: new Text("Home Page")),
          body: body(),
        ));
  }
}
