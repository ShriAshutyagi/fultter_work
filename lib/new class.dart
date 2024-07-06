import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  String url =
      "https://t4.ftcdn.net/jpg/06/00/63/45/360_F_600634561_Ypxj7NLQU7l0ai1TuFzfizhvLFfvO7De.jpg";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(),
        home: Scaffold(
          appBar: AppBar(title: Text("My First Task")),
          body: Center(
            child: Container(

              width: 830,
              height: 430,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                border: Border.all(color: Theme.of(context).primaryColor, width: 3),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 15, left: 15),
                    child: Container(
                        width: 280,
                        height: 370,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          border: Border.all(
                              color: Colors.greenAccent.shade200, width: 3),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                                height: 50,
                                width: 260,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(2),
                                  border: Border.all(
                                      color: Colors.grey.shade500, width: 3),
                                ),
                                child: Center(
                                    child: Text(
                                  "Strawbeery Pavlova",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w900,
                                      color: Colors.black),
                                ))),
                            Container(
                              height: 130,
                              width: 260,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                                border: Border.all(
                                    color: Colors.grey.shade500, width: 3),
                              ),
                              child: Text(
                                  "        Pavlova is a meringue-based \n  dessert named after the Russian \n           ballrine Anna Pavlova.\n   Pavlova features a crisp crust and \n   soft , light inside , tapped with fruit \n             and whipped cream."),
                            ),
                            Container(
                              height: 50,
                              width: 260,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                                border: Border.all(
                                    color: Colors.grey.shade500, width: 3),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                      height: 40,
                                      width: 120,
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.star_border,
                                          ),
                                          Icon(Icons.star_border,size: 12,),
                                          Icon(Icons.star_border,size: 12,),
                                          Icon(Icons.star_border,size: 12,),
                                          Icon(Icons.star_border,size: 12,),
                                        ],
                                      )),
                                  Text("170 Reviews",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w900)),
                                ],
                              ),
                            ),
                            Container(
                              height: 100,
                              width: 260,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                                border: Border.all(
                                    color: Colors.grey.shade500, width: 3),
                              ),
                              child: Center(
                                child: Container(
                                  height: 100,
                                  width: 200,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(14),
                                    border:
                                        Border.all(color: Colors.red, width: 3),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        height: 100,
                                        width: 50,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Icon(Icons.shopping_bag_outlined),
                                            Text("PREP:"),
                                            Text("25 min")
                                          ],
                                        ),
                                      ),
                                      Container(
                                        height: 100,
                                        width: 50,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Icon(Icons.access_time_rounded),
                                            Text("Cook"),
                                            Text("1 hour ")
                                          ],
                                        ),
                                      ),
                                      Container(
                                        height: 100,
                                        width: 50,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Icon(Icons.food_bank_rounded),
                                            Text("FEEDS"),
                                            Text("4-6 ")
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )),
                  ),
                  Container(
                      width: 510,
                      height: 425,
                      child: Image.network(
                        url,
                        fit: BoxFit.fill,
                      )),
                ],
              ),
            ),
          ),
        ));
  }
}
