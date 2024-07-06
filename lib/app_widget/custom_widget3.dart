import 'package:app_11/app_widget/custom_widget.dart';
import 'package:app_11/app_widget/custom_widget2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MYApp());
}

class MYApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
class HomePage extends StatelessWidget {
 var controller1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(child: CustomTextfield(
            textEditingController: controller1,
            textStyle1: TextStyle(fontSize: 19),
            textInputType: TextInputType.phone,
            inputDecoration: InputDecoration(
            enabledBorder:  OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.orange,
                width: 2,
              ),
            ),
              focusedBorder:  OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.orange,
                  width: 2,
                ),
              ),
            ),
          )),
          CustomText("Ashu",)
        ],
      ),
    ) ;
  }
}
