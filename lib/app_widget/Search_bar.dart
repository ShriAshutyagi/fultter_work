import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SearchBarDemo(),
    );
  }
}

class SearchBarDemo extends StatefulWidget {
  @override
  State<SearchBarDemo> createState() => _SearchBarDemoState();
}

class _SearchBarDemoState extends State<SearchBarDemo> {
  List<String> Name = ["Ashu", "Mohit", "Happy", "Himanshu", "Ajay", "Aman", "Suraj"];
  List<String> displayPrint = [];
  String? f ;

  @override
  void initState() {
    super.initState();
    displayPrint = Name;
  }

  void SearchItem(String query) {
     f = query.trim();
    final suggestions = query.isEmpty
        ? Name
        :
    Name.where((item) => item.toLowerCase().contains(f!.toLowerCase())).toList();
    setState(() {
      displayPrint = suggestions;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                onChanged: SearchItem,
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search_rounded),
                  hintText: "Search",
                  hintStyle: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 2,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 2,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 15, left: 15),
                child: ListView.builder(
                  itemBuilder: (_, index) => Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      displayPrint[index],
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  itemCount: displayPrint.length,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
