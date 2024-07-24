import 'package:app_11/custom_textfield.dart';
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
      home: Myhome(),
    );
  }
}

List<Map<String, dynamic>> hum = [
  {
    "Text" : " How to make \n your personal \n brand stand \n out online ",
    "color": Colors.redAccent.shade400,
    "Text2" : "May 21 , 2000",
  },
  {
    "Text" : " Beautiful \n Weather app UI \n Concepts We \n Wish existed ",
    "color": Colors.yellow.shade400,
    "Text2" : "May 21 , 2000",
  },
  {
    "Text" : " 10 excellent \n Font \n Pairing tools for \n designers ",
    "color": Colors.blueGrey.shade400,
    "Text2" : "May 21 , 2000",
   },
  {
    "Text" : " 12 eye- \n catching \n Mobile \n wallpaper ",
    "color": Colors.purpleAccent.shade400,
    "Text2" : "May 21 , 2000",
  },
  {
    "Text" : " Design for \n The Face \n Mask \n challenge ",

    "color": Colors.brown.shade400,
    "Text2" : "May 21 , 2000",
  },
  { "Text" : " How to make \n your personal \n brand stand \n out online ",
    "color": Colors.teal.shade400,
    "Text2" : "May 21 , 2000",
  },
  {
    "Text" : " 10 excellent \n Font \n Pairing tools for \n designers ",
    "color": Colors.purpleAccent.shade400,
    "Text2" : "May 21 , 2000",
  },
  {
    "Text" : " Beautiful \n Weather app UI \n Concepts We \n Wish existed ",
    "color": Colors.lightGreen.shade400,
    "Text2" : "May 21 , 2000",
  },
  {
    "Text" : " Design for \n The Face \n Mask \n challenge ",
    "color": Colors.limeAccent.shade400,
    "Text2" : "May 21 , 2000",
  },
  {
    "Text" : " How to make \n your personal \n brand stand \n out online ",
    "color": Colors.redAccent.shade400,
    "Text2" : "May 21 , 2000",
  },
  {
    "Text" : " Beautiful \n Weather app UI \n Concepts We \n Wish existed ",
    "color": Colors.yellow.shade400,
    "Text2" : "May 21 , 2000",

  },
  {
    "Text" : " 10 excellent \n Font \n Pairing tools for \n designers ",
    "color": Colors.blueGrey.shade400,
    "Text2" : "May 21 , 2000",
  },
  {
    "Text" : " 12 eye- \n catching \n Mobile \n wallpaper ",
    "color": Colors.purpleAccent.shade400,
    "Text2" : "May 21 , 2000",
  },
  {
    "Text" : " Design for \n The Face \n Mask \n challenge ",

    "color": Colors.brown.shade400,
    "Text2" : "May 21 , 2000",
  },
  { "Text" : " How to make \n your personal \n brand stand \n out online ",
    "color": Colors.teal.shade400,
    "Text2" : "May 21 , 2000",
  },
  {
    "Text" : " 10 excellent \n Font \n Pairing tools for \n designers ",
    "color": Colors.purpleAccent.shade400,
    "Text2" : "May 21 , 2000",
  },
  {
    "Text" : " Beautiful \n Weather app UI \n Concepts We \n Wish existed ",
    "color": Colors.lightGreen.shade400,
    "Text2" : "May 21 , 2000",
  },
  {
    "Text" : " Design for \n The Face \n Mask \n challenge ",
    "color": Colors.limeAccent.shade400,
    "Text2" : "May 21 , 2000",
  },

];

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.all(8),

              decoration: BoxDecoration(
                color: hum[index]["color"],
                borderRadius: BorderRadius.circular(14),
              ),
                  child: Column(
                    children: [
                      Padding(
                        padding:  EdgeInsets.only(left: 20,top: 20,),
                        child: Container(
                          height: 130,
                            width: 200,
                           //color: Colors.lime ,
                            child: Text(hum[index]["Text"],style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold ),)),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 20,
                        width: 130,
                       // color: Colors.green,
                        child:  Text(hum[index]["Text2"],style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400 ),),
                      ),

                    ],
                  ));


        },

        itemCount: hum.length,
      ),
    );
  }
}
