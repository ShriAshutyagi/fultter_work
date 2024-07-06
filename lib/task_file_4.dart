import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
              height: double.infinity,
              width: double.infinity,
              child: Image.network(
                  "https://i.pinimg.com/736x/6c/6e/c1/6c6ec11264f1924f3401b31943559d86.jpg",
                  fit: BoxFit.fill)),
          Align(
            alignment: Alignment.bottomCenter ,
            child: Container(
              height: 200,
              width: 300,
             // color: Colors.orange ,
              child: Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Container(
                        height: 70,
                        width: 70,

                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(13)
                        ),
                        child: Icon(Icons.perm_device_info ,size: 27,),
                      ),
                      Container(
                        height: 70,
                        width: 70,

                        decoration: BoxDecoration(
                            color: Colors.grey ,
                            borderRadius: BorderRadius.circular(13)
                        ),
                        child: Icon(Icons.save_alt_rounded,size: 27,  ),
                      ),
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(13)

                        ),
                        child: Icon(Icons.pending,size: 27, ),
                      ),
                    ],

                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Container(
                        height: 40,
                        width: 70,
                        //color: Colors.blue,
                        child: Align(
                          alignment: Alignment.topCenter ,
                          child: Text("info",style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold,color: Colors.white),
                                                ),
                        ),),
                      Container(
                        height: 40,
                        width: 70,

                        //color: Colors.green,
                        child: Align(
                          alignment: Alignment.topCenter ,
                          child: Text("Save",style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold,color: Colors.white),
                          ),
                        ),),

                      Container(
                        height: 40,
                        width: 70,
                        //color: Colors.blue,
                        child: Align(
                          alignment: Alignment.topCenter ,
                          child: Text("Apply",style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold,color: Colors.white),
                          ),
                        ),),

                    ],

                  ),
                ],
              ),
            ),
          )
        ],

      ),
    );
  }
}
