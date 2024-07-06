import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
class HomePage extends StatelessWidget {

var named = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: TextField(
              controller:   named,
              enabled: false,
              decoration: InputDecoration(
               disabledBorder :   OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular( 10)),
                   borderSide: BorderSide(
                     color: Colors.grey.shade300 ,
                     width: 2,
                   )
                     ),
                focusedBorder:  OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular( 10)),
                  borderSide: BorderSide(
                    color: Colors.black,
                  )
              ),
            ),
          ),
          ),
        ],
      ),

    );
  }
}
