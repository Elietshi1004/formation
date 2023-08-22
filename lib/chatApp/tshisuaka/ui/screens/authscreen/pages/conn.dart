import 'package:flutter/material.dart';

class Loginui extends StatefulWidget {
  const Loginui({super.key});

  @override
  State<Loginui> createState() => _LoginuiState();
}

class _LoginuiState extends State<Loginui> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Column(
              children: [
                Text("hello"),
                Text("connectez-vous"),
          CustomTextField(context:context,text:'Adresse Email'),
          CustomTextField(context:context,text:'Mot passe'),
          Padding(
            padding:const EdgeInsets.only(right:20),
            child:Row(
              mainAxisAlignment:MainAxisAlignment.end,
              children:[
                InkWell(
                  onTap:(){},
                  child:Text('Mot de passe oublier')
                ),
              ],
            ),
          ),
              ],
            ),
            Padding(
              padding:const EdgeInsets.all(8.0),
              child:InkWell(
                onTap:(){},
                child:Container(
                  height:75,
                  width:100,
                  decoration:BoxDecoration(
                    color:Colors.red,
                    borderRadius:
                    BorderRadius.circular(20)
                  ),
                  child:Center(child:Text("Login",style:TextStyle(color:Colors.white),)),
                ),
              ),
            ),)
              ],
            ),
          )
        ],
    )
    );
  }
}
