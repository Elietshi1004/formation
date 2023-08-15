import 'package:flutter/material.dart';

class WooclapUI extends StatefulWidget {
  const WooclapUI({super.key});

  @override
  State<WooclapUI> createState() => _WooclapUIState();
}

class _WooclapUIState extends State<WooclapUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Wooclap"),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.settings),
            ),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
            ),
            Text("Est une marque de CPU",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.info,
                  color: Colors.grey,
                ),
                Text("En attente du prochain clap",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w200))
              ],
            ),
            SizedBox(
              height: 10,
            ),
            containerHome(
                texte: "Intel",
                backColor: Colors.blue,
                textColor: Colors.white),
            containerHome(
                texte: "Xp", backColor: Colors.white, textColor: Colors.black),
            containerHome(
                texte: "Apple",
                backColor: Colors.white,
                textColor: Colors.black),
          ],
        ));
  }

  Widget containerHome(
      {required String texte,
      required Color backColor,
      required Color textColor}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width * 0.9,
        padding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
        decoration: BoxDecoration(
            color: backColor, borderRadius: BorderRadius.circular(20)),
        child: Text(texte, style: TextStyle(color: textColor, fontSize: 16)),
      ),
    );
  }
}
