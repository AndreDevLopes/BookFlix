import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Column(children: <Widget>[
        Row(
          children: <Widget>[
            Text("Browse"),
            Text("Recommended"),
          ],
        )
      ]),
    );
  }
}
