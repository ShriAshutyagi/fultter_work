// BMI App code
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MYApp());
}

class MYApp extends StatelessWidget {
  const MYApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  bool hide = false;
  int? convertInches;
  int? totalInches;
  double? totalmeter;
  String? result = "";
  double? calculation ;
  String? first_Controller ;
  String? Second_Controller;
  List<TextEditingController> controller = [
    TextEditingController(),
    TextEditingController(),
    TextEditingController()
  ];
   String text (){
     if(first_Controller != null){
        return "$first_Controller";
     }else if (Second_Controller != null){
       return "$Second_Controller";
     }else if(calculation != null){
       return " your BMI = ${calculation!.toStringAsFixed(2)} \n\n Result$result" ;
     } else{
        return "please enter value";
     }
   }

   void text1 (){

       if(hide == true){
         hide = false;
       }
       else{
         hide = true;
       }


   }
  List<Map<String, dynamic>> list1 = [
    {
      "1": "  Enter your weight (K.g)",
    },
    {
      "1": "  Enter your Height, only (Feet)",
    },
    {
      "1": "  Please enter remaing Inches of Height",
    },
  ];

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            Text(
              "BMI Calculate App ",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 350,
              child: ListView.builder(
                itemBuilder: (context, Index) {
                  return Padding(
                    padding: EdgeInsets.only(left: 10, right: 10, bottom: 25),
                    child: Container(
                      height: 72,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: Colors.green,
                          width: 3,
                        ),
                      ),
                      child: TextField(
                        obscureText: hide,
                        
                        controller: controller[Index],
                        keyboardType: TextInputType.number,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                        decoration: InputDecoration(
                          suffixIcon:  hide == true ? InkWell(onTap : (){
                            setState(() {
                              text1();
                            });
                          },child: Icon(Icons.visibility_off )) : InkWell(onTap : (){},child: Icon(Icons.visibility )),
                          prefixText: "  ",
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                            ),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                              color: Colors.grey,
                            ),
                          ),
                          labelText: list1[Index]["1"],
                          labelStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  );
                },
                itemCount: list1.length,
              ),
            ),
            Container(
              width: 300,
              height: 50,
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {

                      String weight = controller[0].text;
                      String feet = controller[1].text;
                      String inches = controller[2].text;
                      if (weight
                          .trim()
                          .isEmpty) {
                        first_Controller = "Please enter weight";

                      } else if (feet
                          .trim()
                          .isEmpty) {
                        Second_Controller = "please enter feet";

                      } else if (inches
                          .trim()
                          .isEmpty) {
                        controller[2].text = "0";
                        inches = "0";
                      }
                      else {
                        int firstController =
                        int.parse(weight);
                        int SecondController =
                        int.parse(feet);
                        int ThirdController =
                        int.parse(inches);
                        // feet in inches
                        convertInches = (SecondController * 12);
                      // total inches
                      totalInches = (convertInches! + ThirdController);
                      //inches convert to meter
                      totalmeter = (totalInches! * 0.0254);

                      // Bmi Formula
                      double d = pow(totalmeter!, 2).toDouble();
                      calculation = (firstController / d);
                      print(calculation!);
                      if (calculation! < 18) {
                        result = "==UnderWeight";
                      } else if (calculation! >= 18 && calculation! <= 25) {
                        result = "== Healthy";
                      } else if (calculation! > 25) {
                        result = "== OverWeight";
                      }
                      }

                        });


                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey.shade300,
                      side: BorderSide(
                        color: Colors.black,
                      )),
                  child: Text(
                    "Calculate BMI",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black),
                  )),
            ),
            SizedBox(
              height: 40,
            ),

            Text(
               text(),
              style: TextStyle(
                  color: Colors.red,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }

}
