import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}

String text = " Beautiful  Weather  app \n UI  Concepts  we  wish \n Existed..";
String text2 =
    " ho would have thought there could be \n so many creative ways to tell the \n temperature? Today`s daily dose of \n design inspiration is all about the \n weather . in this collection of UI design \n we are sharing a handful of beautiful \n mobile weather app concepts that we \n wish existed in real life";
String text3 =
    " Weather apps are quite the popular \n interface theme for designers to \n expolre. But donot lost theme effort \n clean designs food you. When it comes \n to the weather. There`s a lot of data \n designers have to arrange which can \n be quite a challenge . Regardless, it`s a \n great way ton practice your UI skills";

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black38,
        appBar: AppBar(
          backgroundColor: Colors.black38,
          title: Text(
            "My App",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 100,
                // color: Colors.lightGreen ,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 22),
                      child: Container(
                        height: 50,
                        width: 70,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade500,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(
                          Icons.keyboard_arrow_left_outlined,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 22),
                      child: Container(
                        height: 50,
                        width: 70,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade400,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(
                          Icons.speaker_notes,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 22, right: 22),
                child: Container(
                  width: double.infinity,
                  //color: Colors.blue,
                  child: Text(
                    text,
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 22),
                child: Container(
                  width: double.infinity,
                  height: 30,
                  //color: Colors.blue,
                  child: Text(
                    " May 21 , 2020",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 22, right: 22),
                child: Container(
                  width: double.infinity,
                  height: 250,
                  //color: Colors.blue,
                  child: Text(
                    text2,
                    style: TextStyle(
                        color: Colors.grey.shade300,
                        fontSize: 20,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 22, right: 22),
                child: Container(
                  width: double.infinity,
                  height: 250,
                  // color: Colors.blue,
                  child: Text(
                    text3,
                    style: TextStyle(
                        color: Colors.grey.shade300,
                        fontSize: 20,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),


            ],
          ),
        ));
  }
}
