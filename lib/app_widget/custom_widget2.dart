

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class  CustomTextfield extends StatelessWidget{
  InputDecoration? inputDecoration ;

  TextStyle? textStyle1 ;
  TextEditingController? textEditingController;
  TextInputType? textInputType;
  CustomTextfield({this.inputDecoration,this.textEditingController,this.textStyle1,this.textInputType,});
  @override
  Widget build(BuildContext context) {
    return TextField(
      style: textStyle1,
      controller: textEditingController,
      keyboardType: textInputType,
      decoration: inputDecoration,
    );
  }

}