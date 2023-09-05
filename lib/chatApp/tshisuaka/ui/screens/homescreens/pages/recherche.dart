 

import 'dart:js_util';

import 'package:flutter/material.dart';

class RechercheUI extends StatefulWidget {
  const RechercheUI({super.key});

  @override
  State<RechercheUI> createState() => _RechercheUIState();
}

class _RechercheUIState extends State<RechercheUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("recherche"),
      ),
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(hintText: "entrez le nom",suffixIcon: Icon(Icons.search)),
            
          ),
          Divider(

          ),
           ListTile(
          leading: CircleAvatar(
            child: Icon(Icons.person),
            radius: 20,
          ),
          title: Text("Tshisuaka"),
          subtitle:Divider()
          // trailing: Column(
          //   crossAxisAlignment: CrossAxisAlignment.center,
          // children: [
          
          // ],
          // ),
        )
        ],
      ),
    );
  }
}