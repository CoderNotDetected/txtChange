import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const TestingWidget(),
    );
  }
}

class TestingWidget extends StatefulWidget {
  const TestingWidget({Key? key}) : super(key: key);

  @override
  State<TestingWidget> createState() => _TestingWidgetState();
}

class _TestingWidgetState extends State<TestingWidget> {
  String str = "Welcome Developer";
  void change() {
    setState(() {
      str = "Text is change";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("myapp"),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Center(
                  child: Text(
                str,
                style: const TextStyle(fontSize: 30),
              )),
              width: 300,
              height: 50,
              color: Colors.green,
              margin: const EdgeInsets.all(20),
            ),
            ElevatedButton(onPressed: change, child: const Text("PushIt"))
          ],
        )));
  }
}
