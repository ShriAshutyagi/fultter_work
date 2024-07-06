import 'package:app_11/app_widget/custom_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
    { "type": "icon", "data": Icons.add,
      "2" : "Add Story",
    },
    { "type": "image", "data": "https://static.vecteezy.com/system/resources/previews/024/589/795/large_2x/indian-village-man-cartoon-character-moral-stories-for-the-best-cartoon-character-free-vector.jpg",
      "2" : "Tajveer",
    },
    { "type": "image", "data": "https://tmpfiles.nohat.cc/visualhunter-8edae17c77.png",
      "2" : "Himanshu",
    },
    { "type": "image", "data": "assets/images/man_1.jpg",
      "2" : "Roger",
    },
    { "type": "image", "data": "assets/images/topiman.jpg",
      "2" : "Ashu",
    },
    { "type": "image", "data": "assets/images/women.png",
      "2" : "Happy",
    },
  ];
  List<Map<String, dynamic>> list2 = [
    {  "1" : "assets/images/man_1.jpg",
      "2" : "Ashu tyagi",
      "3" : " Library m chlna nhi k",
    },
    {   "1" : "assets/images/topiman.jpg",
      "2" : "Mohit",
      "3" : "uta liya k so k",
    },

     {   "1" : "assets/images/shiv1.jpg",
       "2" : "Ninja",
       "3" : "Otp bej de ne ",
     },
     { "1" : "assets/images/shiv2.jpg",
      "2" : "Happy",
       "3" : "wifi ka password bta de",
     },
     {  "1" : "assets/images/shiv3.jpeg",
       "2" :    "Mummy",
       "3" : "Roti bna lo kha le ge",
     },
    {
      "1" : "assets/images/gardan.jpg",
      "2" :    "Parshant",
      "3" : "1500 rupey daal do ",
    },
    {
      "1" : "assets/images/home.jpg",
      "2" :    "Setting",
      "3" : "| love you ashu meri jaan ",
    },
    {  "1" : "assets/images/man_1.jpg",
      "2" : "Ashu tyagi",
      "3" : " Library m chlna nhi k",
    },
    {   "1" : "assets/images/topiman.jpg",
      "2" : "Mohit",
      "3" : "uta liya k so k",
    },

    {   "1" : "assets/images/shiv1.jpg",
      "2" : "Ninja",
      "3" : "Otp bej de ne ",
    },
    { "1" : "assets/images/shiv2.jpg",
      "2" : "Happy",
      "3" : "wifi ka password bta de",
    },
    {  "1" : "assets/images/shiv3.jpeg",
      "2" :    "Mummy",
      "3" : "Roti bna lo kha le ge",
    },
    {
      "1" : "assets/images/gardan.jpg",
      "2" :    "Parshant",
      "3" : "1500 rupey daal do ",
    },
    {
      "1" : "assets/images/home.jpg",
      "2" :    "Setting",
      "3" : "| love you ashu meri jaan ",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(

          children: [
            Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(left: 15),

                        child: CustomText("Ashu",textStyle: TextStyle()),
                      ),

                  Padding(
                    padding:  EdgeInsets.only(right: 15),
                    child: Icon(Icons.search_rounded,size: 30, ),
                  ),

                  ],

                ),


                Container(
                  height: 150,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 9,top: 20),
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
                          ),
                          SizedBox(
                            height: 10,
                          ) ,
                          Text(list1[index]["2"],style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                        ],
                      );
                    },
                    itemCount: list1.length,
                  ),
                ),

              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween ,
              children: [
                Padding(
                  padding:  EdgeInsets.only(left: 15),

                  child: Text("Chats",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,),),
                ),

                Padding(
                  padding:  EdgeInsets.only(right: 15),
                  child: Text("....",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,),),
                ),

              ],

            ),
            Container(
              height: 565,
              child: ListView.builder(
                itemBuilder: (context,index)=>
                 Container(
                  height: 80,
                  width: double.infinity,

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                         decoration: BoxDecoration(
                           color: Colors.blue,
                           shape: BoxShape.circle,
                           image: DecorationImage(image: AssetImage(list2[index ]["1"]),fit: BoxFit.fill)
                         ),

                      ),

                      Container(
                        width: 235 ,

                        child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start ,
                           children: [
                             SizedBox(
                               height: 15,
                             ),
                             Text( list2[index ]["2"],style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.grey )),
                             Text(list2[index]["3"],style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,)),
                           ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center ,
                        children: [
                          SizedBox(
                            height: 15,
                          ),
                          Text("2:30 a.m ",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500 )),
                          SizedBox(
                            height: 3,
                          ),
                           CircleAvatar(
                             radius: 10,
                             backgroundColor: Colors.green ,
                             child: Center(child: Text("1",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.limeAccent))),
                           ),
                        ],
                      ),
                    ],
                  ),
                ),
                itemCount: list2.length,
              ),

            ) ,
          ],
        ),
      ),
    );
  }
}