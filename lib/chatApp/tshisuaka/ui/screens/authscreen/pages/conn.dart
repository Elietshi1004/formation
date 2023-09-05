import 'package:flutter/material.dart';
import 'package:formation/chatApp/alydor/UI/screens/Authscreen/pages/pwd.dart';
import 'package:get/get.dart';


import '../../homescreens/home.dart';
import '../../widget/textfield.dart';
import 'creer.dart';

class LoginUI extends StatefulWidget {
  const LoginUI({super.key});

  @override
  State<LoginUI> createState() => _LoginUIState();
}

class _LoginUIState extends State<LoginUI> {
  @override
  Widget build(BuildContext context) {
    print("object");
    return Scaffold(
      backgroundColor: Colors.red[300],
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.9,
          height: MediaQuery.of(context).size.height * 0.5,
          decoration: BoxDecoration(color: Colors.white),
          child: Column(children: [
            Text("Hello",style: TextStyle(color: Colors.black,fontSize: 50,),),
            Text("Connectez-vous"),
            CustomTextfield(context: context, text: 'Adresse Email',),
            CustomTextfield(context: context, text: 'Mot de passe'),
            Padding(
              padding: const EdgeInsets.only(right: 28),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                      onTap: () {
                        Get.to(PasswordUI());
                      },
                      child: Text("Mot de passe oublié?",style: TextStyle(fontSize: 15),)),
                ],
              ),
            ),
            InkWell(
                onTap: () {
                  Get.to(DiscussionUI());
                },
              child: Container(
                height: 75,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Center(
                  child: Text(
                    "Login",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            )
          ]),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Pas de compte ?",selectionColor: Colors.black,),
              InkWell(
                onTap: () {
                  Get.to(CreateUI());
                },
                child: Text(
                  "Créer",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              )
            ],
          ),
        )
      ]),
    );
  }
}
