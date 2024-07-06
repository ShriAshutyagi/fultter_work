// try this code
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MYApp());
}
class MYApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MYHoMEPAGE(),
    );
  }
}
class MYHoMEPAGE extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => MYHoMEPAGEState();
}

String b = "0" ;

List<String> numbers = [];
   void add () {
     numbers.add(b);
     print(numbers);
   }
//   void add1(){
//      for(var i in numbers){
//        c = i;
//      };


class MYHoMEPAGEState extends State<MYHoMEPAGE> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(

        children: [
          Container(
            width: double.infinity,
            height: 400,
            color: Colors.white,
            child: Align (
                alignment: Alignment.bottomRight,
                child: Text("$b",style: TextStyle(fontSize: 30),)),
          ),
          SizedBox(height: 25,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              OutlinedButton(onPressed: (
                  ){
                b = "1";
                setState(() {
                });

              }, child: Text("1",style: TextStyle(fontSize: 20),)),
              OutlinedButton(onPressed: (
                  ){
                b = "2";
                setState(() {
                });

              }, child: Text("2",style: TextStyle(fontSize: 20),)),
              OutlinedButton(onPressed: (
                  ){
                b = "3";


                setState(() {
                });

              }, child: Text("3",style: TextStyle(fontSize: 20),)),

            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              OutlinedButton(onPressed: (
                  ){
                b = "4";
                setState(() {
                });

              }, child: Text("4",style: TextStyle(fontSize: 20),)),
              OutlinedButton(onPressed: (
                  ){
                b = "5";
                setState(() {
                });

              }, child: Text("5",style: TextStyle(fontSize: 20),)),
              OutlinedButton(onPressed: (
                  ){
                b = "6";
                setState(() {
                });

              }, child: Text("6",style: TextStyle(fontSize: 20),)),

            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              OutlinedButton(onPressed: (
                  ){
                b = "7";
                setState(() {
                });

              }, child: Text("7",style: TextStyle(fontSize: 20),)),
              OutlinedButton(onPressed: (
                  ){
                b = "8";
                setState(() {
                });

              }, child: Text("8",style: TextStyle(fontSize: 20),)),
              OutlinedButton(onPressed: (
                  ){
                b = "9";
                setState(() {
                });

              }, child: Text("9",style: TextStyle(fontSize: 20),)),

            ],
          )
        ],
      ),
    );
  }
}

