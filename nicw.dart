import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> myList = []; // खाली सूची

  void addToList(String value) {
    setState(() {
      myList.add(value); // सूची में मान जोड़ें
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add to List Example'),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              addToList('New Value'); // नया मान जोड़ने के लिए बटन दबाएं
            },
            child: Text('Add Value'),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: myList.map((value) {
                  return Text(value); // सूची में हर स्ट्रिंग को Text विजेट में बदलें
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
