 import 'package:flutter/material.dart';

class HomeUI extends StatefulWidget {
  const HomeUI({super.key});

  @override
  State<HomeUI> createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("wooclap"),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 1)),
                  child: Icon(Icons.settings)),
            ),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Est une marque de CPU",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.info),
                Text("En attente du prochain clap",
                    style: TextStyle(color: Colors.grey))
              ],
            ),
            SizedBox(
              height: 10,
            ),
            containerHome("Intel", Colors.blue, Colors.white),
            containerHome("Xp", Colors.grey[100]!, Colors.black),
            containerHome("Apple", Colors.grey[100]!, Colors.black),
          ],
        ));
  }

  Widget containerHome(String text, Color color, Color textColor) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          decoration: BoxDecoration(
              color: color,
              boxShadow: [
                BoxShadow(color: Colors.black, blurRadius: 10),
              ],
              borderRadius: const BorderRadius.all(Radius.circular(20))),
          height: 50,
          width: MediaQuery.of(context).size.width * 0.8,
          child: Center(
              child: Text(text,
                  style: TextStyle(color: textColor, fontSize: 18)))),
    );
  }
}
