import 'package:flutter/material.dart';
import 'package:formation/chatApp/alydor/Widget/textfield.dart';
import 'package:get/get.dart';

import '../../../../Widget/button.dart';

class CreateUI extends StatefulWidget {
  const CreateUI({super.key});

  @override
  State<CreateUI> createState() => _CreateUIState();
}

class _CreateUIState extends State<CreateUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: Icon(Icons.close)),
          ),
          Text("Créer un compte"),
          CustomTextfield(context: context, text: ' Nom'),
          CustomTextfield(context: context, text: 'Email'),
          CustomTextfield(context: context, text: 'Mot de passe'),
          CustomTextfield(context: context, text: 'Confimer Mot de passe'),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                    text: "En cliquant sur créer, vous acceptez nos ",
                    children: [
                      TextSpan(
                          text: "Termes et Conditions",
                          style: TextStyle(color: Colors.blue)),
                      TextSpan(text: " sans reservations")
                    ])),
          ),
          customButton(
              couleur: Colors.yellow,
              text: "créer",
              ontap: () {
                print("Hello world");
              },
              couleurText: Colors.white),
        ],
      ),
    );
  }
}
