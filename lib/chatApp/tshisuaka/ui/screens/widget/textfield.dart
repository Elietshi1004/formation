import'package:flutter/material.dart';

Widget CustomTextfield({required String text,required BuildContext context}){
  return Padding(
    padding:EdgeInsets.all(8.0),
    child:Container(
      padding:EdgeInsets.all(10),
      height:MediaQuery.of(context).size.height*0.08,
      width:MediaQuery.of(context).size.width*0.8,
decoration:BoxDecoration(
  border: Border.all(color:Colors.grey),
borderRadius:BorderRadius.circular(15)),
child:Center(
  child:Textfield(
    decoration:InputDecoration(
      hintText:text,
      border:InputBorder.none
    ),
  ),
),
    ),
  );
}
