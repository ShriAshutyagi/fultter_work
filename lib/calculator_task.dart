import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MYApp());

}

class MYApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MYHoMEPAGE(),
    );
  }
}

class MYHoMEPAGE extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MYHoMEPAGEState();
}

class MYHoMEPAGEState extends State<MYHoMEPAGE> {
  bool buttonEnabled = true;
  String b = "";
  String c = "";
  String d = "";
  int f = 0;

  String m = "";

  List<String> myList =  [];//
  List<int> myList2 = [];
  void addToList() {
    setState(() {
     if( b != "" ){
      myList.add(b);
      print(myList); //
    }});
  }
 void changelist (){

      for (var i in myList) {
        int l = int.parse(i);
        myList2.add(l);

      }
      print(myList2);
    }



  void onPressedAction (){
    if(!buttonEnabled)return;
    else{
      setState(() {
        addToList();
        changelist();
        result();
         b = "";
        // c = "";
        buttonEnabled = false;
      });
    }
    }
  void result (){
    for(int i in myList2){
      f += i;
    }
    print("$f");

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          f == 0 ?
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Container(
              height: 400,
              width:  double.infinity,
              //  color: Colors.green ,
              child: SingleChildScrollView(
                reverse: true,
                child: Container(
                    width: double.infinity,
                    //color: Colors.green ,

                    child: Align(alignment: Alignment.bottomLeft,child:  myList.isEmpty? Text("$b",style: TextStyle(fontSize: 35),) : Text("${myList} ${c} ${b}",style: TextStyle(fontSize: 35),))), ),
            ),
          ) :   Padding(
            padding:  EdgeInsets.only(left: 20),
            child: Container(
              height: 390,
              width:  double.infinity,
              //  color: Colors.green ,
              child: SingleChildScrollView(
                reverse: true,
                child: Container(
                    width: double.infinity,
                    //color: Colors.green ,

                    child: Align(alignment: Alignment.bottomLeft,child:Text("$f",style: TextStyle(fontSize: 35),))), ),
            ),
          ),




          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 100,
                height: 60,
                child: OutlinedButton(
                  style:  OutlinedButton.styleFrom(
                    side: BorderSide(color: Colors.red , width: 2),

                  ),
                  onPressed: () {
                    {
                      setState(() {
                        b += "1";
                      });
                    }
                  },
                  child: Text("1", style: TextStyle(fontSize: 25)),
                ),
              ),
              SizedBox(
                width: 100,
                height: 60,
                child: OutlinedButton(
                  style:  OutlinedButton.styleFrom(
                   side: BorderSide(color: Colors.red , width: 2),

                ),
                  onPressed: () {
                    {
                      setState(() {
                        b += "2";
                      });
                    }
                  },
                  child: Text("2", style: TextStyle(fontSize: 25)),
                ),
              ),
              SizedBox(
                width: 100,
                height: 60,
                child: OutlinedButton(
                  style:  OutlinedButton.styleFrom(
                    side: BorderSide(color: Colors.red , width: 2),
                  ),
                    onPressed: () {
                    {
                      setState(() {
                        b += "3";
                      });
                    }
                  },
                  child: Text("3", style: TextStyle(fontSize: 25)),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 100,
                height: 60,
                child: OutlinedButton(
                  style:  OutlinedButton.styleFrom(
                    side: BorderSide(color: Colors.red , width: 2),

                  ),
                  onPressed: () {
                    {
                      setState(() {
                        b += "4";
                      });
                    }
                  },
                  child: Text("4", style: TextStyle(fontSize: 25)),
                ),
              ),
              SizedBox(
                width: 100,
                height: 60,
                child: OutlinedButton(
                  style:  OutlinedButton.styleFrom(
                    side: BorderSide(color: Colors.red , width: 2),

                  ),
                  onPressed: () {
                    {
                      setState(() {
                        b += "5";
                      });
                    }
                  },
                  child: Text("5", style: TextStyle(fontSize: 25)),
                ),
              ),
              SizedBox(
                width: 100,
                height: 60,
                child: OutlinedButton(
                  style:  OutlinedButton.styleFrom(
                    side: BorderSide(color: Colors.red , width: 2),
                  ),
                  onPressed: () {
                    {
                      setState(() {
                        b += "6";
                      });
                    }
                  },
                  child: Text("6", style: TextStyle(fontSize: 25)),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 100,
                height: 60,
                child: OutlinedButton(
                  style:  OutlinedButton.styleFrom(
                    side: BorderSide(color: Colors.red , width: 2),

                  ),
                  onPressed: () {
                    {
                      setState(() {
                        b += "7";
                      });
                    }
                  },
                  child: Text("7", style: TextStyle(fontSize: 25)),
                ),
              ),
              SizedBox(
                width: 100,
                height: 60,
                child: OutlinedButton(
                  style:  OutlinedButton.styleFrom(
                    side: BorderSide(color: Colors.red , width: 2),

                  ),
                  onPressed: () {
                    {
                      setState(() {
                        b += "8";
                      });
                    }
                  },
                  child: Text("8", style: TextStyle(fontSize: 25)),
                ),
              ),
              SizedBox(
                width: 100,
                height: 60,
                child: OutlinedButton(
                  style:  OutlinedButton.styleFrom(
                    side: BorderSide(color: Colors.red , width: 2),
                  ),
                  onPressed: () {
                    {
                      setState(() {
                        b += "9";
                      });
                    }
                  },
                  child: Text("9", style: TextStyle(fontSize: 25)),
                ),
              ),
            ],
          ),


          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 100,
                height: 60,
                child: OutlinedButton(
                  style:  OutlinedButton.styleFrom(
                    side: BorderSide(color: Colors.red , width: 2),

                  ),
                  onPressed: () {
                    {
                      setState(() {
                        b += "0";
                      });
                    }
                  },
                  child: Text("0", style: TextStyle(fontSize: 25)),
                ),
              ),
              SizedBox(
                width: 100,
                height: 60,
                child: OutlinedButton(
                  style:  OutlinedButton.styleFrom(
                    side: BorderSide(color: Colors.red , width: 2),

                  ),
                  onPressed: () {
                    {

                      setState(() {
                        c = "+";
                        addToList();
                        b = "";

                      });
                    }
                  },
                  child: Text("+", style: TextStyle(fontSize: 30)),
                ),
              ),
              SizedBox(
                width: 100,
                height: 60,
                child: OutlinedButton(
                  style:  OutlinedButton.styleFrom(
                    side: BorderSide(color: Colors.red , width: 2),
                  ),
                  onPressed:   onPressedAction,

                  child: Text("=", style: TextStyle(fontSize: 30)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

}



