import 'dart:ui';

import 'package:app_11/custom_textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Myhome());
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.grey.shade200,
          child: Column(
            children: [
              Expanded(
                flex: 20,
                child: Container(
                    padding: EdgeInsets.only(top: 50),
                    width: double.infinity,
                    child: Center(
                      child: Container(
                        height: 130,
                        width: 230,
                        child: Row(
                          children: [
                            Image.network(url, fit: BoxFit.fill, scale: 10),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Baseline(
                                        baseline: 45,
                                        baselineType: TextBaseline.alphabetic,
                                        child: Text(
                                          a,
                                          style: const TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w700),
                                        )),
                                    const Baseline(
                                        baseline: 50,
                                        baselineType: TextBaseline.alphabetic,
                                        child: Text(
                                          "TIP",
                                          style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold),
                                        )),
                                  ],
                                ),
                                const Text(
                                  "Calculator",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w900),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )),
              ),
              Expanded(
                flex: 35,
                child: Padding(
                  padding:
                      EdgeInsets.only(top: 15, bottom: 25, left: 20, right: 20),
                  child: Container(
                      width: double.infinity,
                      color: Colors.white,
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Total p/person",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Baseline(
                                  baseline: 30,
                                  baselineType: TextBaseline.alphabetic,
                                  child: Icon(Icons.currency_rupee, size: 28)),
                              Text(
                                "000",
                                style: TextStyle(
                                    fontSize: 45, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Divider(
                            thickness: 3,
                            color: Colors.black,
                            indent: 20,
                            endIndent: 20,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 20,
                              ),
                              Column(
                                children: [
                                  Text(
                                    "Total bill",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                  Row(
                                    children: [
                                      Baseline(
                                          baseline: 23,
                                          baselineType: TextBaseline.alphabetic,
                                          child: Icon(
                                            Icons.currency_rupee,
                                            size: 20,
                                          )),
                                      Text(
                                        "000",
                                        style: TextStyle(
                                            fontSize: 30,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 160,
                              ),
                              Column(
                                children: [
                                  Text(
                                    "Total Tip",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                  Row(
                                    children: [
                                      Baseline(
                                          baseline: 23,
                                          baselineType: TextBaseline.alphabetic,
                                          child: Icon(
                                            Icons.currency_rupee,
                                            size: 20,
                                          )),
                                      Text(
                                        "000",
                                        style: TextStyle(
                                            fontSize: 30,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      )),
                ),
              ),
              Expanded(
                flex: 10,
                child: Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Container(
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Enter",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Text(
                              "your bill",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          height: 65,
                          width: 280,
                          color: Colors.white,
                          child: const Align(
                            alignment: Alignment.centerLeft,
                            child: Icon(
                              Icons.currency_rupee_outlined,
                              size: 30,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 20,
                child: Container(
                  width: double.infinity,
                  child: Center(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Container(
                            height: 80,
                            width: 380,
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("Choose",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold)),
                                      Text("your tip",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w400)),
                                    ],
                                  ),
                                  Container(
                                    height: 65,
                                    width: 280,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          height: 65,
                                          width: 80,
                                          color: Colors.blueGrey,
                                          child: const Center(
                                              child: Text("10%",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.white,
                                                      fontSize: 25))),
                                        ),
                                        Container(
                                          height: 65,
                                          width: 80,
                                          color: Colors.blueGrey,
                                          child: const Center(
                                              child: Text("15%",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.white,
                                                      fontSize: 25))),
                                        ),
                                        Container(
                                          height: 65,
                                          width: 80,
                                          color: Colors.blueGrey,
                                          child: const Center(
                                              child: Text("20%",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.white,
                                                      fontSize: 25))),
                                        ),
                                      ],
                                    ),
                                  ),
                                ]),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                right: 15,
                              ),
                              child: Container(
                                height: 70,
                                width: 280,
                                color: Colors.blueGrey,
                                child: const Center(
                                    child: Text("Custom Tip",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            fontSize: 25))),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 15,
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, top: 15, bottom: 20),
                  child: Container(
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Spilit",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                  Text(
                                    "The total",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                height: 65,
                                width: 280,
                                color: Colors.white,
                                child: Row(
                                  children: [
                                    Container(
                                      height: 65,
                                      width: 80,
                                      color: Colors.blueGrey,
                                      child: const Icon(
                                        Icons.add,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Container(
                                      height: 65,
                                      width: 120,
                                      color: Colors.white,
                                    ),
                                    Container(
                                      height: 65,
                                      width: 80,
                                      color: Colors.blueGrey,
                                      child: const Icon(
                                        Icons.remove,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      )),
                ),
              ),
            ],
          )),
    );
  }
}

String url =
    "https://www.vhv.rs/dpng/d/252-2524362_top-hat-png-clipart-hat-black-and-white.png";
String a = "Mr.";
