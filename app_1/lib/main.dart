import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  Widget build(BuildContext qw) {
    return SafeArea(
      child: Scaffold(
        body: Text("HOLAAA"),
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.amber,
        ),
      ),
    );
  }
}
