/// New code
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
           itemBuilder: (context,index) {
          return Container(
          margin: EdgeInsets.all(11),
          height: 100,
          width: 300,
          color: Colors.orange,
            child: Center(
              child: Text(data[index]!, style: TextStyle(fontSize: 32),),
            ),
        );
      },
       // itemCount: data.length,
    ));
  }
}

List<String?> data = [
  "Ashu",
  "Happy",
  "Mohit",

  "Ajay",
  "Himanshu",

  "chaku",
  "Aagrwal",
  "Ashu",
  "Happy",
  "Mohit",
  "Bhudha",
  "Ajay",
  "Himanshu",
  "Ashu",
  "chaku",
  "Aagrwal",
  "Ashu",
  "Happy",
  "Mohit",
  "Bhudha",
  "Ajay",
  "Himanshu",
  "Ashu",
  "chaku",
  "Aagrwal",
  "Ashu",
  "Happy",
  "Mohit",
  "Bhudha",
  "Ajay",
  "Himanshu",
  "Ashu",
  "chaku",
  "Aagrwal"
];
