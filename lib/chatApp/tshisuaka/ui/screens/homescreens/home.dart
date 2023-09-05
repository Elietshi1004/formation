import 'package:flutter/material.dart';
import 'package:formation/chatApp/alydor/Widget/textfield.dart';
import 'package:formation/chatApp/tshisuaka/ui/screens/homescreens/pages/profil.dart';
import 'package:formation/chatApp/tshisuaka/ui/screens/homescreens/pages/recherche.dart';
import 'package:get/get.dart';

class DiscussionUI extends StatefulWidget {
  const DiscussionUI({super.key});

  @override
  State<DiscussionUI> createState() => _DiscussionUIState();
}

class _DiscussionUIState extends State<DiscussionUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        Get.to(RechercheUI());
      },
      child: Icon(Icons.message),
      ),
    appBar: AppBar(
      backgroundColor: Colors.blueGrey,
      title: Text("tchat"),
      actions: [
        Padding(
          padding:const EdgeInsets.all(0.8),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white,width: 1),
            ),
            child: Icon(Icons.search),
          ),
        )
      ],
    ),
    body: Container(
      height: MediaQuery.of(context).size.height,
      child: ListView(children: [
        ListTile(
          leading: InkWell(
            onTap: (){
Get.to(ProfilUI());
            },
            child: CircleAvatar(
              child: Icon(Icons.person),
              radius: 20,
            ),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [
              Text("Tshisuaka"),
            Text("16:40"),

            ],
          ),
          subtitle: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("salut"),
                Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height:25 ,
                decoration: BoxDecoration(color: Colors.green,shape: BoxShape.circle),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(child: Text("1")),
                ),
              ),
            )
            ],
          ),
          // trailing: Column(
          //   crossAxisAlignment: CrossAxisAlignment.center,
          // children: [
          
          // ],
          // ),
        )
      ]),
    ),
    );
  }
}