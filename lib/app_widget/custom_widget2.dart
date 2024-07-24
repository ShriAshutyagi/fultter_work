
import 'package:app_11/app_widget/tab1.dart';
import 'package:app_11/app_widget/tab2.dart';
import 'package:app_11/app_widget/tab3.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Bottom_Navigation.dart';

void main() {
  runApp(MyAPP());
}

class MyAPP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Bottom_Navigation(),
    );
  }
}

class Tabpage extends StatefulWidget {
  @override
  State<Tabpage> createState() => TabpageState();
}

class TabpageState extends State<Tabpage> with SingleTickerProviderStateMixin {
  TabController? mtabController;
  String title = "Whatshpp";

  @override
  void initState() {
    super.initState();
    mtabController = TabController(length: 3, vsync: this);
       mtabController!.addListener(() {
            print(mtabController!.index);
            if(mtabController!.index == 0){
              title = "WhatsApp";

            }else if (mtabController!.index == 1){
              title = "Status";
            }else{
              title = "Call";
            };
            setState(() {
            });
          });
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title,style: TextStyle(color: Colors.green ,fontWeight: FontWeight.bold),),
        bottom: TabBar(
          controller: mtabController,
          tabs: [
            Tab(
              height: 65,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.chat_sharp),
                  SizedBox(width: 10),
                  Text("Chats"),
                ],
              ),
            ),
            Tab(
              height: 65,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.update),
                  SizedBox(width: 10),
                  Text("Status"),
                ],
              ),
            ),
            Tab(
              height: 65,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.call, size: 20),
                  SizedBox(width: 10),
                  Text("Call"),
                ],
              ),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: mtabController,
        children: [
          chats(),
          Status(),
          calls(),
        ],
      ),
    );
  }
}