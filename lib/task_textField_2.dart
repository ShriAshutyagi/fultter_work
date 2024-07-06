import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,

      home: HomePage(),
    );
  }
}
List<Map<String , dynamic>> listdata = [
  {
    "1." : " Name",
    "2" : (value){
      print(value);
    },
  },
  {
    "1." : " Email",
    "2" : (value){
      print(value);
    },
  },
  {
    "1." : " Password",
    "2" : (value){
      print(value);
    },
  }
];
class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SingleChildScrollView (
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 170,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text( "Create New Account",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
            ),
            Container(
            height: 300,
            width: double.infinity,
            child: ListView.builder(itemBuilder: (context , Index){
                         return Padding(
                           padding: const EdgeInsets.only(left: 20,right: 20,bottom: 20),
                           child: TextField(
                                    onChanged: listdata[Index]["2"],
                             decoration: InputDecoration(
                               contentPadding: EdgeInsets.only(top: 10),
                               labelText: listdata[Index]["1."],
                               enabledBorder: OutlineInputBorder(
                                 borderRadius: BorderRadius.circular(12),
                                 borderSide: BorderSide(
                                   color: Colors.grey.shade300,
                                   width: 3,
                                 ),
                               ),
                               focusedBorder: OutlineInputBorder(
                                 borderRadius: BorderRadius.circular(12),
                                 borderSide: BorderSide(
                                   color: Colors.grey.shade300,
                                   width: 3,
                                 ),
                               ),
                             ),
                           ),
                         );
        
                  },
              itemCount: listdata.length,
            ),
                  ),
        
              Row(
                children: [
                  SizedBox(
                    width: 23,
                  ),
                  Container(
                    height: 15,
                    width: 15,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Text("I agree with Terms & Conditions",style: TextStyle(fontSize: 16),),
        
                ],
              ),
             SizedBox(
               height: 25,
             ),
             Padding(
               padding: const EdgeInsets.only(left: 20,right: 20),
               child: Container(
                 height: 60,
                 width :  double.infinity,
                 decoration: BoxDecoration(
                   color: Colors.blue,
                   borderRadius: BorderRadius.circular(12),
                 ),
                 child: Center(child: Text("Create Account ",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),
               ),
             ),
        SizedBox(
          height: 200,
        ),
        Padding(
          padding:  EdgeInsets.only(left: 80,right: 20),
          child: Text("Already have an account? Sign In ",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),
          ),
        ),
          ],
        ),
      ),
          );

  }

}