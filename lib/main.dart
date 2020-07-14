import 'package:flutter/material.dart';
import 'package:hello_flutter/screens/home.dart';

void main() => runApp(HelloFlutterApp());

class HelloFlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Hello Flutter",
        home: Scaffold(
            appBar: AppBar(
                title: Text("Hello Flutter"),
                backgroundColor: Colors.deepPurple),
            body: Home()));
  }
}
