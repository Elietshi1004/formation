import 'package:flutter/material.dart';

import '../../../../Widget/textfield.dart';

class LoginUI extends StatefulWidget {
  const LoginUI({super.key});

  @override
  State<LoginUI> createState() => _LoginUIState();
}

class _LoginUIState extends State<LoginUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[300],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Container(
          width: MediaQuery.of(context).size.width*0.9,
          height: MediaQuery.of(context).size.height*0.5,
          decoration: BoxDecoration(
            color: Colors.white),
            child: Column(children: [
              Text("Hello"),
              Text("Connectez-vous"),
              CustomTextfield(context: context, text: 'Adresse Email'),
              CustomTextfield(context: context, text: 'Mot de passe'),
              Padding(
                padding: const EdgeInsets.only(right: 28),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                  InkWell(child: Text("Mot de passe oublié?")),
                ],
                ),
              ),
              Container(
                height: 20,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: ,
              )           
            ]),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Pas de compte ?"),
              Text("Créer", style: TextStyle(
                color: Colors.red,
              ),)
            ],
          ),
        )
      ]),
    );
  }
}