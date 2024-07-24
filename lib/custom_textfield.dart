import 'package:flutter/material.dart';

class Myhome extends StatefulWidget {
  @override
  State<Myhome> createState() => _MyhomeState();
}

class _MyhomeState extends State<Myhome> {

  Color borderColor = Colors.grey;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(
          height: 62,
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(
              width: 2,
              color: borderColor ,
            ),
            borderRadius: BorderRadius.circular(13),
          ),
          child: TextField(
            style: TextStyle(
              fontSize: 18,fontWeight: FontWeight.bold,
            ),
            onTap: () {
              setState(() {
                 borderColor = Colors.black;
              });
            },
            decoration: InputDecoration(
                labelText: "Please enter the name",
                labelStyle: TextStyle(fontSize: 15, color: Colors.grey,fontWeight: FontWeight.bold ),
                floatingLabelStyle:
                    TextStyle(fontSize: 17, color: Colors.black ,fontWeight: FontWeight.w400 ),
                border: InputBorder.none,
                contentPadding:
                    EdgeInsets.only(left: 10, right: 10, top: 7, bottom: 6)),
          ),
        ),
      ),
    ));
  }
}
