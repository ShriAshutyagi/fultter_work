import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // MaterialApp creates the main application widget
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Custom Floating Label'), // Sets the app bar title
        ),
        body: Center(
          child: Padding(
            padding:  EdgeInsets.only(left: 20,right: 20),
            child: Container(
              height: 67,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(20)
              ),
              child: Column(
                children: [

                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 10),
                    child: TextField(
                      onChanged:  (value){print(value);},
                      keyboardType: TextInputType.phone ,
                      decoration: InputDecoration(
                        //labelText: "mobile number",
                        labelStyle: TextStyle(fontSize: 18,),
                        label: Container(
                          padding: EdgeInsets.symmetric(horizontal: 6) ,
                          child: Text("mobile number"),
                        ),

                        enabledBorder: UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                            color: Colors.grey.shade200,
                          ),
                        ),
                          focusedBorder: UnderlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                color: Colors.grey.shade200
                              )
                          )
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ), // Displays the custom text field widget in the center of the screen
        ),
      ),
    );
  }
}

