import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../Widget/button.dart';
import '../../../../Widget/textfield.dart';


class PasswordUI extends StatefulWidget {
  const PasswordUI({super.key});

  @override
  State<PasswordUI> createState() => _PasswordUIState();
}

class _PasswordUIState extends State<PasswordUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: Icon(Icons.close)),
          ),
          Text("Nous vous envoyons un code sur Mail"),
           CustomTextfield(context: context, text: 'Adresse Email'),
           customButton(couleur: Colors.blue, couleurText: Colors.white, ontap: () {  }, text: 'Tapez'),
        ],
          
        
        ),
        
        
      );
    
  }
}