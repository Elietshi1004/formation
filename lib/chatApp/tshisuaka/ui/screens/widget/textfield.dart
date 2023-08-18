import 'package:flutter/material.dart';

Widget costomTextfield({required String text, required BuildContext context}) {
  return Container(
      // child: TextField(),
      height: MediaQuery.of(context).size.height * 0.1,
      width: MediaQuery.of(context).size.width * 0.8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: Colors.red,
        ),
      ),
      child: Center(
        child: TextField(
          decoration: InputDecoration(
            hintText: text,
            border: InputBorder.none
          ),
        ),
      ));
}
