import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  List<Map<String, dynamic>> list1 = [
    { "type": "icon", "data": Icons.add },
    { "type": "image", "data": "https://static.vecteezy.com/system/resources/previews/024/589/795/large_2x/indian-village-man-cartoon-character-moral-stories-for-the-best-cartoon-character-free-vector.jpg" },
    { "type": "image", "data": "https://tmpfiles.nohat.cc/visualhunter-8edae17c77.png" },
    { "type": "image", "data": "assets/images/man_1.jpg" },
    { "type": "image", "data": "assets/images/topiman.jpg" },
    { "type": "image", "data": "assets/images/women.png" },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 150,
              color : Colors.orangeAccent ,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 9),
                    child: Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.black,
                          width: 2,
                        ),
                      ),
                      child: Center(
                        child: list1[index]["type"] == "image"

                            ? ClipOval(
                          child: list1[index]["data"].startsWith('http')
                              ? Image.network(
                            list1[index]["data"],
                            width: 75,
                            height: 75,
                            fit: BoxFit.fill,
                          )
                              : Image.asset(

                            list1[index]["data"],
                            width: 75,
                            height: 75,
                            fit: BoxFit.contain ,
                          ),
                        )
                            : Icon(
                          list1[index]["data"],
                          color: Colors.blue.shade400,
                          size: 30,
                        ),
                      ),
                    ),
                  );
                },
                itemCount: list1.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}