
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
 class HomePage extends StatelessWidget {
    var emailController = TextEditingController();

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       backgroundColor: Colors.black,
       body: SingleChildScrollView(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.start,
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             SizedBox(height: 200),
             Padding(
               padding: const EdgeInsets.only(left: 30 ),
               child: Text("Sign In",style: TextStyle(color: Colors.black,fontStyle: FontStyle.normal ,fontSize: 35,fontWeight: FontWeight.bold),),
             ),
             SizedBox(
               height: 40,
             ),
             Padding(
               padding:  EdgeInsets.only(left: 20,right: 20),
               child: TextField(
                   controller: emailController,
                   decoration: InputDecoration(
                     hintText: "Username or Email",
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
             ),
             SizedBox(
               height: 15,
             ),
             Padding(
               padding:  EdgeInsets.only(left: 20,right: 20),
               child: TextField(
                 enabled: true,
                 decoration: InputDecoration(
                   hintText: "Password",
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
             ),
             Padding(
               padding: EdgeInsets.only(left: 30,right: 20,top: 20),
               child: Container(
                 height: 30,
                 width: 170,
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly ,
                   children: [
                     Container(
                       height: 18,
                       width: 18,
                       color: Colors.white,
                     ),
                     Text("Remember me",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w400),),
                   ],
                 ),
               ),
             ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: Column(

                    children: [
                      Container(
                        height: 52,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(child: Text("Sign In ",style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold,color: Colors.white),)),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text("Forget Password?"),
                    ],
                  ),
                ),
                         SizedBox(
                           height: 25,
                         ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                     children: [
                       Container(
                         height: 2,
                         width: 170,
                         color: Colors.black,
                       ),
                       SizedBox(
                         width: 15,
                       ),
                       Text("Or",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                       SizedBox(
                         width: 15,
                       ),
                       Container(
                         height: 2,
                         width: 170,
                         color: Colors.black,
                       ),
                     ],
                                      ),

                         Padding(
                           padding:  EdgeInsets.only(left: 20,right: 20) ,
                           child: Column(
                             children: [
                               Container(
                                 height: 60,
                                 width: double.infinity,
                                
                                 decoration: BoxDecoration(
                                   color: Colors.white,
                                   borderRadius: BorderRadius.circular(12),
                                 ),
                                 child: Row(
                                   children: [
                                     SizedBox(
                                       width: 70,
                                     ),

                                      SizedBox(
                                        width:15 ,
                                      ),
                                     Text("Continue With Google",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500) ,),
                                     ],
                                 ),

                               ),
                               SizedBox(
                                 height: 20,
                               ),
                               Container(
                                 height: 60,
                                 width: double.infinity,

                                 decoration: BoxDecoration(
                                   color: Colors.white ,
                                   borderRadius: BorderRadius.circular(12),
                                 ),
                                 child: Row(
                                   children: [
                                     SizedBox(
                                       width: 70,
                                     ),

                                     SizedBox(
                                       width:15 ,
                                     ),
                                     Text("Continue With Facebook",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500) ,),
                                   ],
                                 ),

                               ),
                               SizedBox(
                                 height: 40,
                               ),
                               Text("Don't have an account? Sign Up",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500) ,),
                             ],
                           ),
                         )
           ],
         ),
       ),
     );
   }
 }
