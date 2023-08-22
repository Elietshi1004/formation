import 'package:flutter/material.dart';

Widget customButton({required Color couleur, required String text, required Function() ontap, required Color couleurText,}) {
  return InkWell(onTap: ontap ,
    child: Container(
      decoration:
          BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(30)), color: couleur),
      width: 150,
      height: 50,
      child: Center(child: Text("$text", style: TextStyle(color: couleurText, fontSize: 18, fontWeight: FontWeight.bold),)),
    ),
  );
}
