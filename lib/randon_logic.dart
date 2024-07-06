import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: MyHomePage());
  }
}

List<Map<String, dynamic>> listdata = [
  {
    "1.": "Max Prize Pool",
    "2.": "25,200",
    "3.": "Entry",
    "4.": "59",
    "5.": "39",
  },
  {
    "1.": "Max Prize Pool",
    "2.": "12 Crores",
    "3.": "Entry",
    "4.": "49",
    "5.": "29",
  },
  {
    "1.": "Max Prize Pool",
    "2.": "8 Crores",
    "3.": "Entry",
    "4.": "39",
    "5.": "19",
  },
  {
    "1.": "Max Prize Pool",
    "2.": "50 Lakhs",
    "3.": "Entry",
    "4.": "9999",
    "5.": "9500",
  },
  {
    "1.": "Max Prize Pool",
    "2.": "5 Lakhs",
    "3.": "Entry",
    "4.": "1,149",
    "5.": "999",
  },
];
List<Map<String, dynamic>> listdata2 = [
  {
    "1.": "1,470",
    "2.": "spots left",
    "3.": "1500 spots",
  },
  {
    "1.": "56,620",
    "2.": "spots left",
    "3.": "1500 spots",
  },
  {
    "1.": "594",
    "2.": "spots left",
    "3.": "1500 spots",
  },
  {
    "1.": "2",
    "2.": "spots left",
    "3.": "1500 spots",
  },
  {
    "1.": "1,39,73,839",
    "2.": "spots left",
    "3.": "1500 spots",
  },
];
List<Map<String, dynamic>> listdata3 = [
  {
    "1.": "80",
    "2.": "21%",
    "3.": "11",
  },
  {
    "1.": "1 crores",
    "2.": "66%",
    "3.": "20",
  },
  {
    "1.": "75 lakhs",
    "2.": "59%",
    "3.": "20",
  },
  {
    "1.": "12 Lakhs",
    "2.": "48%",
    "3.": "11",
  },
  {
    "1.": "50,000",
    "2.": "60%",
    "3.": "11",
  },
];

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: listdata.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.all(12),
            width: 350,
            height: 180,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey.shade400,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 80,
                    width: 370,
                    //color: Colors.blue.shade100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 4),
                              child: Text(
                                listdata[index]["1."],
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey),
                              ),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.currency_rupee,
                                  size: 22,
                                ),
                                Text(
                                  listdata[index]["2."],
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              children: [
                                Text(listdata[index]["3."]),
                                Icon(
                                  Icons.currency_rupee,
                                  size: 13,
                                ),
                                Text(
                                  listdata[index]["4."],
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              height: 30,
                              width: 85,
                              color: Colors.green,
                              child: Center(
                                child: Text(
                                  listdata[index]["5."],
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Divider(
                  thickness: 4,
                  endIndent: 10,
                  indent: 10,
                  color: Colors.redAccent.shade100,
                ),
                Container(
                  height: 20,
                  width: 365,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            listdata2[index]["1."],
                            style: TextStyle(color: Colors.red, fontSize: 13),
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Text(
                            listdata2[index]["2."],
                            style: TextStyle(color: Colors.red, fontSize: 13),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            listdata2[index]["3."],
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                fontSize: 13),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 30,
                    width: 376,
                    color: Colors.grey.shade200,
                    child: Row(
                      children: [
                        Icon(
                          Icons.currency_rupee,
                          size: 15,
                        ),
                        IntrinsicWidth(
                          child: Container(
                            // color: Colors.green,
                            child: Text(
                              listdata3[index]["1."],
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: double.infinity,
                          width: 50,
                          //color: Colors.green,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(
                                Icons.paid_rounded,
                                color: Colors.grey,
                                size: 20,
                              ),
                              Text(listdata3[index]["2."]),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Container(
                          height: 17,
                          width: 17,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.grey.shade600,
                            ),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Center(
                              child: Text(
                            "M",
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey.shade700,
                                fontWeight: FontWeight.w700),
                          )),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text("upto"),
                        Text(listdata3[index]["3."]),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(
                                Icons.check_circle,
                                color: Colors.green,
                                size: 19,
                              ),
                            ],
                          ),
                        ),
                        Text("Guaranteed"),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
 