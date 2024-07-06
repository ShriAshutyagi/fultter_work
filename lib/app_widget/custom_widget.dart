 import 'package:flutter/material.dart';

class CustomText extends StatelessWidget{
  String data;
  TextStyle textStyle;
  CustomText(this.data, {this.textStyle = const TextStyle(fontWeight: FontWeight.bold,fontSize: 35,)});
  @override
  Widget build(BuildContext context) {
     return Text(data,style: textStyle);
  }
  
}